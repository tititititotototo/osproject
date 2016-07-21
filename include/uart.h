// uart include

#define UART_BASE (0xF0000000 + 0x3800000)

void uart_putc(char ch);
void uart_puts(const char *s);
void uart_puthex(const unsigned int value);
void uart_puthexnl (const unsigned int value);