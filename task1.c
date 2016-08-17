//task1

#include <uart.h>
#include <system.h>

static count1 = 0;

int main(unsigned int arg) {

	while(1)
	{
		local_irq_disable();
		uart_puts("task# ");
		uart_puthexnl(arg);
		if (count1++ > 60) 
			return; 

		local_irq_enable();		
		//schedule();
	}   
}
