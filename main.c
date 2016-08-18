#include <s5pv310.h>
#include <uart.h>
#include <interrupt.h>
#include <timer.h>
#include <system.h>

#define TASK0L2PT (unsigned int *)(0x100000 + 0x4400)
#define TASK1L2PT (unsigned int *)(0x100000 + 0x4800)
#define SHAREDL2PT (unsigned int *)(0x100000 + 0x4c00)
#define TASKL2PT(n) (unsigned int*)(0x100000+0x4800+n*0x400)

#define TASK0BASE (0x40200000 | 0x01 << 4 | 0x2 << 2 | 0x2)
#define TASK1BASE (0x40300000 | 0x01 << 4 | 0x2 << 2 | 0x2)
#define SHAREDBASE (0x40400000 | 0x01 << 4 | 0x2 << 2 | 0x2)
#define TASKBASE(n) (0x40300000 | 0x01 << 4 | 0x2 << 2 | 0x2)

#define MASTERL1PT (unsigned int *)(0x100000)
#define TASK0L2PTBASE (0x40004400 | 0x03 << 5| 1 <<4 | 0x1)
#define TASK1L2PTBASE (0x40004800 | 0x03 << 5| 1 <<4 | 0x1)
#define SHAREDL2PTBASE (0x40004C00 | 0x03 << 5| 1 <<4 | 0x1)

void mmu_fill_l2pt(unsigned int *,unsigned int *,unsigned int);
void flush_cache_tlb();
void mmu_map_l2pt(unsigned int *,unsigned int);

//IRQ Enable , UserMode , JumpToTask0

#define jump2task0()   \
({ unsigned int spsr;  \
   unsigned int task0addr = 0x400000; \
   unsigned int svcsp = 0x408000;     \
   __asm__ __volatile__(   \
   	"sub sp,%2,#4\n"       \
   	"mov r0,#0\n"	       \
   	"mrs %0, spsr\n"       \
   	"bic %0, %0,#0xFF\n"   \   	
   	"orr %0, %0,#0x4 | 0x5F\n"   \     	
   	"msr spsr_c,%0\n"      \
   	"movs pc,%1"           \
   	::"r"(spsr),"r"(task0addr),"r"(svcsp) \
   	:"memory","cc");  \
})

#define get_pc() \
({ unsigned int pc; \
   __asm__ __volatile__("mov %0, pc" :"=r"(pc):); pc;})

#define get_sp() \
({ unsigned int sp; \
	__asm__ __volatile__("mov %0, sp" :"=r"(sp):); sp;})

#define syscall() __asm__ ("swi 1")

void kmain(void) {

	unsigned int sp;
	unsigned int pc;
	unsigned int loopCnt = 0;
	unsigned int *pt1;

	uart_puts("IAMROOT OS PROJECT 2016!!\n");
	uart_puts("S5PC210 MMU Enable Verison!!\n");
	uart_puts("Chapter 8-1. Task0, Task1, Mutex Flag\n");

	pc = get_pc();
	sp = get_sp();

	uart_puts("kmain :");	
	uart_puthexnl((unsigned int)kmain);

	uart_puts("SP :");
	uart_puthexnl(sp);

	uart_puts("PC :");
	uart_puthexnl(pc);

	mmu_fill_l2pt(TASK0L2PT,TASK0L2PT+8,TASK0BASE); // 0x104400 ~0x104420 Task0 0x200000 ~0x202000  0x40200000
	mmu_fill_l2pt(TASK1L2PT,TASK1L2PT+8,TASK1BASE); // 0x104800 ~0x104820 Task1 0x300000 ~0x302000	0x40300000
	mmu_fill_l2pt(SHAREDL2PT,SHAREDL2PT+8,SHAREDBASE); // 0x104C00 ~0x104C20 Shared 0x400000 ~0x402000	0x40400000

	{
		int i;
		for(i=2;i<16;i++) 
		{
			mmu_fill_l2pt(TASKL2PT(i),TASKL2PT(i)+6,TASKBASE(i)); // 0x104800 ~0x104820 Task1 0x300000 ~0x302000	0x40300000

			// uart_puts("i:");uart_puthexnl(i);uart_putc('\n');
			// uart_puthexnl(TASKL2PT(i));
			// uart_putc(' ');
			// uart_puthexnl(TASKL2PT(i)+6);
			// uart_putc(' ');
			// uart_puthexnl(TASKBASE(i));
			// uart_putc('\n');

			mmu_fill_l2pt(TASKL2PT(i)+6,TASKL2PT(i)+8,TASKBASE(i)+0x4000+i*0x2000); // 0x104800 ~0x104820 Task1 0x300000 ~0x302000	0x40300000

			// uart_puthexnl(TASKBASE(i)+0x4000+i*0x2000);
			// uart_putc('\n');

		}	
	}

	flush_cache_tlb();

	mmu_map_l2pt(MASTERL1PT+4,TASK0L2PTBASE); //  0x100010 Write (0x40000,) , 0x40200000
	mmu_map_l2pt(MASTERL1PT+2,SHAREDL2PTBASE); // 0x100008 Write (0x20000,) , 0x40400000

	init_task();

	InitInterrupt();
	timer_init();
	//local_irq_enable();
	
	uart_puts("Jump To Task0\n");
	*(volatile unsigned int *)(0x200000) = 0;  // Phys Addr 0x40400000 Access
	*(volatile unsigned int *)(0x200004) = 1;  // Phys Addr 0x40400000 Access

	jump2task0(); // Jump To 0x40000, Phys Addr 0x40200000 Access
	
	while(1);
}
