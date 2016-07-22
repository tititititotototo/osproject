//task0
#include <uart.h>
#include <system.h>

int main(void) {

    #define SUM *(volatile unsigned int*)0x200000

    static unsigned int tmp_sum;
    static unsigned int count = 0;

	while(1) {
		tmp_sum = SUM;	
		if(tmp_sum >= 0x5000) break;		
		tmp_sum++;
		SUM = tmp_sum;
		count++;
	}

	local_irq_disable();
	uart_puts("sum in task0 ");
	uart_puthexnl(SUM);
	uart_puts("count in task0 ");
	uart_puthexnl(count);
	local_irq_enable();

	while(1);
}