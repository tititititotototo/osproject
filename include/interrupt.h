#define  ICDIPTR *(volatile unsigned int*)(0xF0000000 + 0x0490848)
#define  ICDISER *(volatile unsigned int*)(0xF0000000 + 0x0490108)
#define  ICCPMR  *(volatile unsigned int*)(0xF0000000 + 0x0480004)
#define  ICCICR  *(volatile unsigned int*)(0xF0000000 + 0x0480000)
#define  ICDDCR  *(volatile unsigned int*)(0xF0000000 + 0x0490000)

// #define local_irq_enable()  \
// ({ unsigned int temp;       \
//     __asm__ __volatile__ (  \
//         "mrs %0, cpsr\n"    \
//         "bic %0,%0,#0x80\n" \
//         "msr cpsr_c,%0\n"   \
//         :"=r"(temp)         \
//         :                   \ 
//         :"memory","cc");    \
// })

// #define local_irq_disable() \
// ({ unsigned int temp;       \
//     __asm__ __volatile__ (  \
//         "mrs %0, cpsr\n"    \
//         "orr %0,%0,#0x80\n" \
//         "msr cpsr_c,%0\n"   \
//         :"=r"(temp)         \
//         :                   \ 
//         :"memory","cc");    \
// })

extern void (*isrTable[96])(void);
void InitInterrupt(void);
void eventsIRQHandler(void);
void IntEnable(void);