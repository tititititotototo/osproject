#include <task.h>
#include <timer-list.h>
#include <null.h>

void init_timer_list(timer_list *plist)
{
	plist->head = NULL;
	plist->num = 0;
	plist->expires_next = -1;
}

void insert_timer_list(timer_list* plist, process_state *proc)
{
	if (plist->num == 0) {

		plist->head = proc;
		plist->expires_next = proc->expires;
	}
	else if (proc->expires < plist->expires_next) {

		proc->next = plist->head;
		plist->head = proc;
		plist->expires_next = proc->expires;		
	}
	else {
		int i;
		process_state* tmp = plist->head;

		while(1) {

			if (tmp->next == NULL) {

				tmp->next = proc;
				break;
			}

			if (proc->expires <= tmp->next->expires) {

				proc->next = tmp->next;
				tmp->next = proc;
				break;
			}

			tmp = tmp->next;
		}

		plist->num++;
	}
}

process_state* remove_timer_list(timer_list* plist,unsigned int jiffies)
{
	process_state* tmp = NULL;

	if (plist->num == 0)
		return (process_state *)(-1);
	
	if (plist->expires_next <= jiffies) {
		tmp = plist->head;
		plist->head = plist->head->next;
		
		if (plist->head != NULL)
			plist->expires_next = plist->head->expires;		
		else
			plist->expires_next = -1;

		plist->num--;
		tmp->next = NULL;
	}
	return tmp;
}