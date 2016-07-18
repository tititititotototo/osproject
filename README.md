cute_os : 2016 OsProject 2nd project

Memory Map

PADDR

0x40010000              First Load Addr (Load cute-boot.bin)
0x40100000              CuteOS Load Addr (Load CuteOS)

VADDR

0x0        ~ 0xFFFFF    CuteOS Kernel (When Kmain Start)
0x100000   ~ 0x1FFFFF   Task1
0x200000   ~ 0x2FFFFF   Task2
0x300000   ~ 0x3FFFFF   ......
0x40100000 ~ 0x401FFFFF CuteOS Kernel Region(for When PA -> VA)
0xF0000000 ~ 0xFFFFFFFF SFR Region

StackPoint(VADDR)

SVC SP : 0x100000 - 0x4
IRQ SP : 0x100000 - 0x1000
SYS SP : 0x408000