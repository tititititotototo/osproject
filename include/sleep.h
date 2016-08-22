#define SLEEP_ON(pwaitq)				      \
({   					 					  \
	unsigned int pwq = (unsigned int)pwaitq;  \
	__asm__ __volatile__(   				  \
		"mov r1,%0\n"      					  \
		"swi 0x7f"          				  \
		::"r"(pwq):"r1");   				  \
})
		
#define WAKE_UP(pwaitq)				      \
({   					 					  \
	unsigned int pwq = (unsigned int)pwaitq;  \
	__asm__ __volatile__(   				  \
		"mov r1,%0\n"      					  \
		"swi 0x7e"          				  \
		::"r"(pwq):"r1");   				  \
})

void sleep_on(priorQ *pwaitq);
void wake_up(priorQ *pwaitq);