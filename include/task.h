typedef struct _process_state {

	unsigned int context[18];
	unsigned int pid;
	unsigned int time_remain;
	unsigned int time_slice;
	unsigned int need_resched;
	unsigned int prior;
	struct _process_state *next;
	unsigned int expires;
} process_state;
	
void schedule(void);