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

    //*(volatile unsigned int *)(0xF0000000 + 0x0480010) = (icciar0 & 0x3FF);
    {
        #define SUM *(volatile unsigned int*)0x200000

        static unsigned int tmp_sum;
        static unsigned int count = 0;
        static unsigned int do_sum = 1;

        if(do_sum == 0) goto sched;
        tmp_sum = SUM;

        if(tmp_sum >= 0x5000) {
            //do_sum = 0;
            uart_puts("sum int timer int Handler ");
            uart_puthexnl(SUM);
            uart_puts("count in timer int Handler ");
            uart_puthexnl(count);
            //goto sched;
            tmp_sum = 0;
            count = 0;
            SUM = 0;
        }
        else {            
            tmp_sum++;
            SUM = tmp_sum;
            count++;
        }
    }

    sched:
        schedule();

    //uart_putc('T');

    *(volatile unsigned int *)(0xF0000000 + 0x0480010) = (icciar0 & 0x3FF);    
}