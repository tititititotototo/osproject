#include <task.h>
#include <prior-queue.h>
#include <null.h>

void initpriorQ(priorQ *ppQ) 
{
 	int i;
 	for(i=0;i<16;i++)
 		initqueue(&ppQ->Q[i]);
 	ppQ->num =0;

}


void enpriorQ(priorQ* ppQ,process_state* proc)
{
	enqueue(&ppQ->Q[proc->prior],proc);
	ppQ->num++;
}

process_state* depriorQ(priorQ* ppQ)
{
	if(ppQ->num == 0) 
		return NULL;
	else
	{
		int i;
		process_state *tmp;

		for(i=0;i<16;i++){

			tmp = dequeue(&ppQ->Q[i]);
			if (tmp != NULL) break;
		}

		ppQ->num --;
		tmp->next = NULL;

		return tmp;
	}

}