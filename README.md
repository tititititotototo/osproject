cute_os : 2016 OsProject 2nd project  
  
Memory Map  

PADDR  

0x40000000 ~ 0x40004000 MMU L1 Page  
0x40004000 ~ 0x40005000 MMU L2 Page  
0x40010000              First Load Addr (Load cute-boot.bin)  
0x40100000              CuteOS Load Addr (Load CuteOS)  

VADDR  

0x0        ~ 0xFFFFF    CuteOS Kernel (When Kmain Start)  
0x100000   ~ 0x103FFF   MMU Page L1 Table  
0x104000   ~ 0x104FFF   MMU Page L2 Table  
0x105000   ~ 0x1FFFFF   ........  
0x200000   ~ 0x2FFFFF   Task1  
0x300000   ~ 0x3FFFFF   Task2  
0x400000   ~ 0x3FFFFF   Task Run Region  
0x40100000 ~ 0x401FFFFF CuteOS Kernel Region(for When PA -> VA)  
0xF0000000 ~ 0xFFFFFFFF SFR Region  

StackPoint(VADDR)  

SVC SP : 0x100000 - 0x4  
IRQ SP : 0x100000 - 0x1000  
SYS SP : 0x408000  
