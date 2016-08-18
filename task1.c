//task1

#include <uart.h>
#include <system.h>

static volatile int count1 = 0;

int main(unsigned int arg) {

	while(1)
	{
		int i;
		for(i=0;i<0x10000;i++);		
		local_irq_disable();
		uart_putc('a'+arg);
		local_irq_enable();					

		if (count1++ > 1500) return;
	}  
}
