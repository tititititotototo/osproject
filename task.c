typedef struct {
	unsigned int context[18];
}process_state;

process_state process[16];
process_state* current;
process_state *prev,*next;
unsigned int pid = 0;

// Context Frame 
//CPSR
//PC
//R0-R12
//SP
//LR
//RSVD

void init_task(void)
{
	current = &process[0];
	next = current;

	process[1].context[13+2] = 0x408000; //SP
	process[1].context[1] = 0x400000; // PC
	process[1].context[0] = 0x5F; // CPSR
	process[1].context[0+2] = 1;

	{
		int i;
		for(i=2;i<16;i++)
		{
			process[i].context[13+2] = 0x408000;
			process[i].context[1] = 0x400000;
			process[i].context[0] = 0x5F;
			process[i].context[0+2] = i;
		}
	}
}

#define MASTERL1PT (unsigned int *)(0x100000)
#define TASK0L2PTBASE (0x40004400 | 0x3 << 5 | 1 << 4 | 0x1)
#define TASK1L2PTBASE (0x40004800 | 0x3 << 5 | 1 << 4 | 0x1)
#define TASKL2PTBASE(n) ((0x40004800+(n*0x400)) | 0x3 << 5 | 1 << 4 | 0x1)

static int count = 0;

void schedule(void)
{
	pid = (pid+1)%16;

	// if (pid == 15) 
	// 	count++;

	// if (count > 5) return;
	
	current = &process[pid];
	next = current;

	flush_cache_tlb();

	//uart_puthexnl(next);
	//uart_puthexnl(pid);

	if(pid == 0) mmu_map_l2pt(MASTERL1PT+4,TASK0L2PTBASE);
	else if (pid==1) mmu_map_l2pt(MASTERL1PT+4,TASK1L2PTBASE);
	else mmu_map_l2pt(MASTERL1PT+4,TASKL2PTBASE(pid));
}

