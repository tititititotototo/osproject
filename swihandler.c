//SWI Handler

void schedule(void);

void eventsSWIHandler(unsigned int syscallnum)
{
	static unsigned int cnt = 0;

	uart_puts("SWI:");	
	uart_puts("sysNum");
	uart_puthex(syscallnum);		
	uart_puts("   \n");	

	// if(syscallnum == 0x80)
	// { 
	// 	uart_putc('A');
	// 	uart_putc('\n');
	// }
	// else
	// 	uart_putc('B');
	// 	uart_putc('\n');
	
	//uart_puthex(cnt++);
	//uart_puthexnl(cnt++);
	schedule();
}