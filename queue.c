#include <task.h>
#include <queue.h>
#include <null.h>

void initqueue(queue *q)
{
	q->head = NULL;
	q->tail = NULL;
	q->num = 0;
}

void enqueue(queue *q, process_state * proc)
{
	if(q->num == 0) {

		q->head = proc;
		q->tail = proc;
	}
	else {

		q->tail->next = proc;
		q->tail = proc;
	}

	q->num++;
}

process_state *dequeue(queue *q) 
{
	process_state * tmp;

	if(q->num == 0) 
		return NULL;
	else if (q->num == 1) {
		tmp = q->head;
		q->head = NULL;
		q->tail = NULL;
	}
	else {

		tmp = q->head;
		q->head = q->head->next;
	}

	q->num --;

	return tmp;

}