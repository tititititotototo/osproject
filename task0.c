//task0
#include <uart.h>
#include <system.h>

int main(unsigned int arg) {

	while(1)
	{
		local_irq_disable();
		uart_puts("task@ ");
		uart_puthexnl(arg);
		local_irq_enable();		
		//schedule();
	}   
}
