#include <interrupt.h>
#include <timer.h>
#include <uart.h>

volatile unsigned int systemTick;

void timer_init(void) {

    // TCFG0
    TCFG0 = 0x0C00;

    // TCFG1
    //TCFG1 = 0xF << 16;

    // TCNTB4
    TCNTB4 = 1000;

    // TCON
    TCON = 5 << 20;

    // TINT_CSTAT
    TINT_CSTAT = (1<<4);

    isrTable[73] = TickHandler;
}

void TickHandler(void) {
    
    systemTick++;
    *(volatile unsigned int*)(0xF0000000 + 0x39D0044) |= (1 << 9);    
}