#include <timer.h>
#include <task.h>
#include <prior-queue.h>
#include <interrupt.h>
#include <timer-list.h>
#include <null.h>

extern process_state* current;
extern priorQ *expired;
extern priorQ *active;
extern timer_list tlist;
unsigned int jiffies = 0;

void (*isrTable[96])(void);

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

void eventsIRQHandler(void)
{
    unsigned int icciar0 = *(volatile unsigned int *)(0xF0000000 + 0x048000C);
    int irq = icciar0 & 0x3FF;

    process_state *pps;

    jiffies++;
    current->time_remain --;
    if (current->time_remain <= 0) 
    {
        current->time_remain = current->time_slice;     
        current->need_resched = 1;
    }

    isrTable[irq]();

    *(volatile unsigned int *)(0xF0000000 + 0x0480010) = (icciar0 & 0x3FF);    

    while(1)
    {
        pps = remove_timer_list(&tlist,jiffies);

        if((pps == NULL) || (pps == (process_state*)(-1)))
            goto sched;

        enpriorQ(active,pps);

        if(current->prior < pps->prior) 
            current->need_resched = 1;
    }

sched:
    if (current->need_resched == 1) 
    {
        current->need_resched = 0;
        //enpriorQ(active,current);
        schedule();
    }   
}