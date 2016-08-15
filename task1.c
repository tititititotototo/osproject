//task1

#include <uart.h>
#include <system.h>

int main(void) {

	// while(1)
	// {
	// 	local_irq_disable();
	// 	uart_putc('1');
	// 	local_irq_enable();
	// 	//schedule();
	// }

    #define SUM *(volatile unsigned int*)(0x200000)
    #define SUM_LOCK *(volatile unsigned int*)(0x200004)

    static unsigned int tmp_sum;
    static unsigned int count = 0;
		
	while(1) {

		while(1) {
			local_irq_disable();
			if (SUM_LOCK == 1) {
				//uart_puts("T1S\n");
				SUM_LOCK = 0;
				local_irq_enable();
				break;
			}			
			local_irq_enable();
		}

		tmp_sum = SUM;	
		if(tmp_sum >= 0x100000) {
			local_irq_disable();
			SUM_LOCK = 1;
			local_irq_enable();
			uart_puts("T2\n ");
			break;		
		}

		tmp_sum++;
		SUM = tmp_sum;

		local_irq_disable();
		SUM_LOCK = 1;
		local_irq_enable();

		count++;
	}

	local_irq_disable();
	uart_puts("sum in task1 ");
	uart_puthexnl(SUM);
	uart_puts("count in task1 ");
	uart_puthexnl(count);
	local_irq_enable();

	while(1);
}