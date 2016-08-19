//task0
#include <uart.h>
#include <system.h>

static volatile int count0 = 0;

int main(unsigned int arg) 
{
	int i = arg;

	while(1)
	{	uart_putc('@'); }
	// {
	// 	uart_putc('a'+arg);
	// 	i--;

	// 	if(i<=0) 
	// 	{
	// 		i = arg;
	// 		alarm(16-arg);
	// 	}

	// 	//if (count1++ > 1500) return;
	// }  	   
}
