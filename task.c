#include <task.h>
#include <null.h>
#include <prior-queue.h>

process_state process[16];
process_state* current;
process_state *prev,*next;
unsigned int pid = 0;

priorQ pQ[2]; 
priorQ *active;
priorQ *expired;

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

	process[0].context[0+2] = 0; //ARG
	process[0].context[13+2] = 0x408000; //SP
	process[0].context[1] = 0x400000; // PC
	process[0].context[0] = 0x5F; // CPSR
	process[0].pid = 0; // pid
	process[0].time_remain = 10; // Time Remain
	process[0].time_slice = 10; // Time Slice
	process[0].need_resched = 0; // need sched
	process[0].prior = 0; // prior 0
	process[0].next = NULL; // next NULL

	{
		int i;
		for(i=1;i<16;i++)
		{
			process[i].context[0+2] = i; //ARG
			process[i].context[13+2] = 0x408000; //SP
			process[i].context[1] = 0x400000; // PC
			process[i].context[0] = 0x5F; // CPSR
			process[i].pid = i; // pid
			process[i].time_remain = i; // Time Remain
			process[i].time_slice = i; // Time Slice
			process[i].need_resched = 0; // need sched
			process[i].prior = 0; // prior 0
			process[i].next = NULL; // next NULL
		}
	}

	initpriorQ(&pQ[0]);
	initpriorQ(&pQ[1]);

	active = &pQ[0];
	expired = &pQ[1];

	{
		int i;
		for(i=1;i<16;i++)
			enpriorQ(active,&process[i]);
	}
}

#define MASTERL1PT (unsigned int *)(0x100000)
#define TASK0L2PTBASE (0x40004400 | 0x3 << 5 | 1 << 4 | 0x1)
#define TASK1L2PTBASE (0x40004800 | 0x3 << 5 | 1 << 4 | 0x1)
#define TASKL2PTBASE(n) ((0x40004800+(n*0x400)) | 0x3 << 5 | 1 << 4 | 0x1)

static int count = 0;

void schedule(void)
{	
	current = depriorQ(active);

	if(current == NULL) {
		priorQ * tmp;
		tmp = active;
		active = expired;
		expired = tmp;
		current = depriorQ(active);
	}

	next = current;

	flush_cache_tlb();

	//uart_puthexnl(next);
	//uart_puthexnl(pid);

	if(current->pid == 0) mmu_map_l2pt(MASTERL1PT+4,TASK0L2PTBASE);
	else if (current->pid==1) mmu_map_l2pt(MASTERL1PT+4,TASK1L2PTBASE);
	else mmu_map_l2pt(MASTERL1PT+4,TASKL2PTBASE(current->pid));
}