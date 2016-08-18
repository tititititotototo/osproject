typedef struct _queue {

	process_state *head;
	process_state *tail;
	unsigned int num;

} queue;

void initqueue(queue *q);
void enqueue(queue *q, process_state *proc);
process_state *dequeue(queue *q);