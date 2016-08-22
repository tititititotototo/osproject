//SWI Handler
#include <task.h>
#include <timer-list.h>
#include <prior-queue.h>
#include <sleep.h>

extern process_state* current;
extern timer_list tlist;
extern unsigned int jiffies;

void schedule(void);

void eventsSWIHandler(unsigned int syscallnum,unsigned int arg1)
{
	if(syscallnum == 0x80)
	{
		unsigned int alarm_time = arg1;
		current->expires = jiffies+alarm_time;
		insert_timer_list(&tlist,current);
		current->need_resched = 1;
	}

	if(syscallnum == 0x7f)
	{
		priorQ * pwaitq= (priorQ *)arg1;
		uart_putc('^');
		sleep_on(pwaitq);
	}

	if(syscallnum == 0x7e)
	{
		priorQ * pwaitq = (priorQ *)arg1;
		wake_up(pwaitq);
	}

	if(current->need_resched == 1)
	{
		current->need_resched = 0;
		schedule();
	}	
}