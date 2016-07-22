
#define local_irq_enable()  \
({ unsigned int temp;       \
    __asm__ __volatile__ (  \
        "mrs %0, cpsr\n"    \
        "bic %0,%0,#0x80\n" \
        "msr cpsr_c,%0"   \
        :"=r"(temp)         \
        :                   \ 
        :"memory","cc");    \
})

#define local_irq_disable() \
({ unsigned int temp;       \
    __asm__ __volatile__ (  \
        "mrs %0, cpsr\n"    \
        "orr %0,%0,#0x80\n" \
        "msr cpsr_c,%0"   \
        :"=r"(temp)         \
        :                   \ 
        :"memory","cc");    \
})