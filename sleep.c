#include <task.h>
#include <prior-queue.h>
#include <null.h>

extern process_state * current;
extern priorQ *active;

void sleep_on(priorQ * pwaitq)
{
	enpriorQ(pwaitq,current);
	current->need_resched = 1;
}

void wake_up(priorQ *pwaitq)
{
	process_state *pps;

	pps = depriorQ(pwaitq);
	if (pps == NULL) return;

	enpriorQ(active,pps);

	if(current->prior < pps->prior)
		current->need_resched = 1;
}

