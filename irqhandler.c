#include <timer.h>
#include <interrupt.h>

void schedule(void);

void (*isrTable[96])(void);


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

// void local_irq_enable(void) {
//     __asm__ __volatile__ (
//         "mrs    r0, cpsr\t\n"
//         "bic    r0, r0, #0xC0\t\n"
//         "msr    cpsr, r0\t\n"
//     );
// }

// void local_irq_disable(void) {
//     __asm__ __volatile__ (
//         "mrs    r0, cpsr\t\n"
//         "orr    r0, r0, #0xC0\t\n"
//         "msr    cpsr, r0\t\n"
//     );
// }

void IntEmptyHandler(void) {
    uart_puts("Empty Handler!!\n");
}

void InitInterrupt(void) {
    int i;

    for (i = 0; i < 96; i++) {
        isrTable[i] = IntEmptyHandler;
    }

    ICDIPTR = 0x01010101; //ICDIPTR
    ICDISER = 1 << 9;     //ICDISER
    ICCPMR = 0xFF;        //ICCPMR
    ICCICR = 0x03;        //ICCICR
    ICDDCR = 0x1;         //ICDDCR
}

void eventsIRQHandler(void) {
    unsigned int icciar0 = *(volatile unsigned int *)(0xF0000000 + 0x048000C);
    int irq = icciar0 & 0x3FF;

    isrTable[irq]();
    
    *(volatile unsigned int *)(0xF0000000 + 0x0480010) = (icciar0 & 0x3FF);    

    //uart_putc('C');
    sched:
        schedule();
}