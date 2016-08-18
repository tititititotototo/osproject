typedef struct _timer_list {

	process_state *head;
	unsigned int num;
	unsigned int expires_next;

} timer_list;

void init_timer(timer_list *);
void insert_timer_list(timer_list*,process_state *);
process_state* remove_timer_list(timer_list *,unsigned int);