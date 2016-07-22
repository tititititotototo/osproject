//task0

int main(void) {

	 // while(1){		
	 // 	int i = 0;
	 // 	for(i=0;i<0x2;i++); //Delay
	 // 	__asm__ ("swi 0x80");
	 // }

	while(1) __asm__ ("swi 0x80");
}