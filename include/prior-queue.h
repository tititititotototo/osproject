#include <queue.h>

typedef struct _priorQ {

	queue Q[16];
	unsigned int num;
} priorQ;

void initpriorQ(priorQ *);
void enpriorQ(priorQ *,process_state *);
process_state* depriorQ(priorQ *);