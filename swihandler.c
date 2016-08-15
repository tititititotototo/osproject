//SWI Handler

void schedule(void);

void eventsSWIHandler(unsigned int syscallnum)
{
	schedule();
}