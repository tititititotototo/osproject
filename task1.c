//task1

#include <uart.h>
#include <system.h>
#include <task.h>
#include <prior-queue.h>
#include <sleep.h>

static volatile int count1 = 0;

int main(unsigned int arg) 
{
	#define SUM *(volatile unsigned int*)(0x200000)
	#define SUM_LOCK *(volatile unsigned int*)(0x200004)

	unsigned int tmp_sum;
	unsigned int count = 0;
	priorQ *psum_waitq = (priorQ *)(0x200008);

	uart_putc('@');
	uart_puthexnl(arg);

	while(1);

	//if(arg > 2) while(1);

	

	// while(1)
	// {
	// 	while(1)
	// 	{
	// 		local_irq_disable();

	// 		if(SUM_LOCK == 1) 
	// 		{
	// 			SUM_LOCK = 0;
	// 			local_irq_enable();
	// 			break;
	// 		}

	// 		SLEEP_ON(psum_waitq);
	// 		local_irq_enable();
			
	// 	}



	// 	tmp_sum = SUM;

	// 	if(tmp_sum >= 0x100000)
	// 	{
	// 		local_irq_disable();
	// 		SUM_LOCK = 1;			
	// 		WAKE_UP(psum_waitq);
	// 		local_irq_enable();
	// 		uart_putc('%');
	// 		uart_puthexnl(tmp_sum);
	// 		break;
	// 	}

	// 	tmp_sum++;
	// 	SUM = tmp_sum;

	// 	local_irq_disable();
	// 	SUM_LOCK = 1;
	// 	//uart_putc('%');
	// 	//uart_puthexnl(tmp_sum);
	// 	WAKE_UP(psum_waitq);
	// 	local_irq_enable();	

	// 	count++;
	// }

	// local_irq_disable();
	// uart_puts("sum in task");
	// (arg == 1) ? uart_putc('1') : uart_putc('2');
	// uart_puts(":");
	// uart_puthexnl(SUM);

	// uart_puts("count in task");
	// (arg == 1) ? uart_putc('1') : uart_putc('2');
	// uart_puts(":");
	// uart_puthexnl(count);
	// local_irq_enable();

	// while(1);	
}
