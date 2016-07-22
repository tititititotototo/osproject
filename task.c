typedef struct {
	unsigned int context[18];
}process_state;

process_state process[2];
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
}

#define MASTERL1PT (unsigned int *)(0x100000)
#define TASK0L2PTBASE (0x40004400 | 0x3 << 5 | 1 << 4 | 0x1)
#define TASK1L2PTBASE (0x40004800 | 0x3 << 5 | 1 << 4 | 0x1)

void schedule(void)
{
	pid = (pid+1)%2;
	current = &process[pid];
	next = current;

	flush_cache_tlb();

	//uart_putc('a');

	if(pid == 0) mmu_map_l2pt(MASTERL1PT+4,TASK0L2PTBASE);
	else mmu_map_l2pt(MASTERL1PT+4,TASK1L2PTBASE);
}

