#include <s5pv310.h>
#include <uart.h>
#include <interrupt.h>
#include <timer.h>
#include <system.h>

#define TASK0L2PT (unsigned int *)(0x100000 + 0x4400)
#define TASK1L2PT (unsigned int *)(0x100000 + 0x4800)
#define TASK0BASE (0x40200000 | 0x01 << 4 | 0x2 << 2 | 0x2)
#define TASK1BASE (0x40300000 | 0x01 << 4 | 0x2 << 2 | 0x2)
#define MASTERL1PT (unsigned int *)(0x100000)
#define TASK0L2PTBASE (0x40004400 | 0x03 << 5| 1 <<4 | 0x1)
#define TASK1L2PTBASE (0x40004800 | 0x03 << 5| 1 <<4 | 0x1)

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
   	"mrs %0, spsr\n"       \
   	"bic %0, %0,#0xFF\n"   \   	
   	"orr %0, %0,#0x4 | 0x10\n"   \  
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
	uart_puts("Chapter 6-2. Jump2Task0!!\n");

	pc = get_pc();
	sp = get_sp();

	uart_puts("kmain :");	
	uart_puthexnl((unsigned int)kmain);

	uart_puts("SP :");
	uart_puthexnl(sp);

	uart_puts("PC :");
	uart_puthexnl(pc);

	mmu_fill_l2pt(TASK0L2PT,TASK0L2PT+8,TASK0BASE); // Task0 0x200000 ~0x202000
	mmu_fill_l2pt(TASK1L2PT,TASK1L2PT+8,TASK1BASE); // Task1 0x300000 ~0x302000
	flush_cache_tlb();
	mmu_map_l2pt(MASTERL1PT+4,TASK0L2PTBASE); // 0x100010 Write

	// pt1 = (unsigned int*)0x100010;
	// uart_puthexnl((unsigned int)*pt1);

	InitInterrupt();
	timer_init();

	//local_irq_enable();

	jump2task0();
	
	while(1);
	
	// while(loopCnt < 20)
	// {
	// 	int i;
	// 	//syscall();
	// 	for(i=0;i<0x100000;i++); //Delay
	// 	loopCnt++;		
	// }

	// local_irq_disable();

	// InitInterrupt();
	// timer_init();
	// local_irq_enable();	
}
