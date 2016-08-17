 #define TCFG0 		*(volatile unsigned int*)(0xF0000000 + 0x39D0000)
 #define TCFG1		*(volatile unsigned int*)(0xF0000000 + 0x39D0004)
 #define TCNTB4 	*(volatile unsigned int*)(0xF0000000 + 0x39D003C)
 #define TCON 		*(volatile unsigned int*)(0xF0000000 + 0x39D0008)
 #define TINT_CSTAT *(volatile unsigned int*)(0xF0000000 + 0x39D0044)
 
 extern volatile unsigned int systemTick;
 void timer_init(void);
 void TickHandler(void);