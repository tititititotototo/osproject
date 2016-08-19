//SWI Handler
#include <task.h>
#include <timer-list.h>

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

	if(current->need_resched == 1)
	{
		uart_putc('*');
		current->need_resched = 0;
		schedule();
	}	
}