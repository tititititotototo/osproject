
cuteOS:     file format elf32-littlearm
cuteOS
architecture: arm, flags 0x00000012:
EXEC_P, HAS_SYMS
start address 0x40100000

Program Header:
    LOAD off    0x00000054 vaddr 0x40100000 paddr 0x40100000 align 2**2
         filesz 0x00000110 memsz 0x000042a4 flags rwx
private flags = 5000200: [Version5 EABI] [soft-float ABI]

Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .text         00000108  40100000  40100000  00000054  2**2
                  CONTENTS, ALLOC, LOAD, CODE
  1 .data         00000008  40100108  40100108  0000015c  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  2 .bss          00004194  40100110  40100110  00000164  2**2
                  ALLOC
  3 .comment      00000038  00000000  00000000  00000164  2**0
                  CONTENTS, READONLY
  4 .ARM.attributes 00000035  00000000  00000000  0000019c  2**0
                  CONTENTS, READONLY
Contents of section .text:
 40100000 d3f021e3 08009fe5 021aa0e3 01d080e0  ..!.............
 40100010 00f01fe5 00002040 68001040 04b02de5  ...... @h..@..-.
 40100020 00b08de2 14d04de2 0030a0e1 0d304be5  ......M..0...0K.
 40100030 4e35a0e3 08300be5 0000a0e1 08301be5  N5...0.......0..
 40100040 103093e5 023003e2 000053e3 faffff0a  .0...0....S.....
 40100050 08301be5 0d205be5 2020c3e5 00d04be2  .0... [.  ....K.
 40100060 04b09de4 1eff2fe1 00482de9 04b08de2  ....../..H-.....
 40100070 08d04de2 0030a0e3 08300be5 0130a0e3  ..M..0...0...0..
 40100080 0c300be5 0c301be5 08300be5 4f00a0e3  .0...0...0..O...
 40100090 e1ffffeb 5300a0e3 dfffffeb 5000a0e3  ....S.......P...
 401000a0 ddffffeb 5200a0e3 dbffffeb 4f00a0e3  ....R.......O...
 401000b0 d9ffffeb 4a00a0e3 d7ffffeb 4500a0e3  ....J.......E...
 401000c0 d5ffffeb 4300a0e3 d3ffffeb 5400a0e3  ....C.......T...
 401000d0 d1ffffeb 2000a0e3 cfffffeb 5400a0e3  .... .......T...
 401000e0 cdffffeb 4500a0e3 cbffffeb 5300a0e3  ....E.......S...
 401000f0 c9ffffeb 5400a0e3 c7ffffeb 2100a0e3  ....T.......!...
 40100100 c5ffffeb feffffea                    ........        
Contents of section .data:
 40100108 01000000 02000000                    ........        
Contents of section .comment:
 0000 4743433a 20283135 3a342e39 2e332b73  GCC: (15:4.9.3+s
 0010 766e3233 31313737 2d312920 342e392e  vn231177-1) 4.9.
 0020 33203230 31353035 32392028 70726572  3 20150529 (prer
 0030 656c6561 73652900                    elease).        
Contents of section .ARM.attributes:
 0000 41340000 00616561 62690001 2a000000  A4...aeabi..*...
 0010 05436f72 7465782d 41390006 0a074108  .Cortex-A9....A.
 0020 01090212 04140115 01170318 011a0122  ..............."
 0030 012a0144 01                          .*.D.           

Disassembly of section .text:

40100000 <_start>:
40100000:	e321f0d3 	msr	CPSR_c, #211	; 0xd3
40100004:	e59f0008 	ldr	r0, [pc, #8]	; 40100014 <_STACK_ADDR_BASE>
40100008:	e3a01a02 	mov	r1, #8192	; 0x2000
4010000c:	e080d001 	add	sp, r0, r1
40100010:	e51ff000 	ldr	pc, [pc, #-0]	; 40100018 <_STACK_ADDR_BASE+0x4>

40100014 <_STACK_ADDR_BASE>:
40100014:	40200000 	eormi	r0, r0, r0
40100018:	40100068 	andsmi	r0, r0, r8, rrx

4010001c <uart_putc>:
4010001c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
40100020:	e28db000 	add	fp, sp, #0
40100024:	e24dd014 	sub	sp, sp, #20
40100028:	e1a03000 	mov	r3, r0
4010002c:	e54b300d 	strb	r3, [fp, #-13]
40100030:	e3a0354e 	mov	r3, #327155712	; 0x13800000
40100034:	e50b3008 	str	r3, [fp, #-8]
40100038:	e1a00000 	nop			; (mov r0, r0)
4010003c:	e51b3008 	ldr	r3, [fp, #-8]
40100040:	e5933010 	ldr	r3, [r3, #16]
40100044:	e2033002 	and	r3, r3, #2
40100048:	e3530000 	cmp	r3, #0
4010004c:	0afffffa 	beq	4010003c <uart_putc+0x20>
40100050:	e51b3008 	ldr	r3, [fp, #-8]
40100054:	e55b200d 	ldrb	r2, [fp, #-13]
40100058:	e5c32020 	strb	r2, [r3, #32]
4010005c:	e24bd000 	sub	sp, fp, #0
40100060:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
40100064:	e12fff1e 	bx	lr

40100068 <kmain>:
40100068:	e92d4800 	push	{fp, lr}
4010006c:	e28db004 	add	fp, sp, #4
40100070:	e24dd008 	sub	sp, sp, #8
40100074:	e3a03000 	mov	r3, #0
40100078:	e50b3008 	str	r3, [fp, #-8]
4010007c:	e3a03001 	mov	r3, #1
40100080:	e50b300c 	str	r3, [fp, #-12]
40100084:	e51b300c 	ldr	r3, [fp, #-12]
40100088:	e50b3008 	str	r3, [fp, #-8]
4010008c:	e3a0004f 	mov	r0, #79	; 0x4f
40100090:	ebffffe1 	bl	4010001c <uart_putc>
40100094:	e3a00053 	mov	r0, #83	; 0x53
40100098:	ebffffdf 	bl	4010001c <uart_putc>
4010009c:	e3a00050 	mov	r0, #80	; 0x50
401000a0:	ebffffdd 	bl	4010001c <uart_putc>
401000a4:	e3a00052 	mov	r0, #82	; 0x52
401000a8:	ebffffdb 	bl	4010001c <uart_putc>
401000ac:	e3a0004f 	mov	r0, #79	; 0x4f
401000b0:	ebffffd9 	bl	4010001c <uart_putc>
401000b4:	e3a0004a 	mov	r0, #74	; 0x4a
401000b8:	ebffffd7 	bl	4010001c <uart_putc>
401000bc:	e3a00045 	mov	r0, #69	; 0x45
401000c0:	ebffffd5 	bl	4010001c <uart_putc>
401000c4:	e3a00043 	mov	r0, #67	; 0x43
401000c8:	ebffffd3 	bl	4010001c <uart_putc>
401000cc:	e3a00054 	mov	r0, #84	; 0x54
401000d0:	ebffffd1 	bl	4010001c <uart_putc>
401000d4:	e3a00020 	mov	r0, #32
401000d8:	ebffffcf 	bl	4010001c <uart_putc>
401000dc:	e3a00054 	mov	r0, #84	; 0x54
401000e0:	ebffffcd 	bl	4010001c <uart_putc>
401000e4:	e3a00045 	mov	r0, #69	; 0x45
401000e8:	ebffffcb 	bl	4010001c <uart_putc>
401000ec:	e3a00053 	mov	r0, #83	; 0x53
401000f0:	ebffffc9 	bl	4010001c <uart_putc>
401000f4:	e3a00054 	mov	r0, #84	; 0x54
401000f8:	ebffffc7 	bl	4010001c <uart_putc>
401000fc:	e3a00021 	mov	r0, #33	; 0x21
40100100:	ebffffc5 	bl	4010001c <uart_putc>
40100104:	eafffffe 	b	40100104 <kmain+0x9c>

Disassembly of section .data:

40100108 <__data_start>:
40100108:	00000001 	andeq	r0, r0, r1
4010010c:	00000002 	andeq	r0, r0, r2

Disassembly of section .bss:

40100110 <__bss_start>:
	...

401002a0 <MainStackAddr>:
401002a0:	00000000 	andeq	r0, r0, r0

401002a4 <ExceptStack>:
	...

401022a4 <MainStack>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <_stack+0x1050d24>
   4:	35312820 	ldrcc	r2, [r1, #-2080]!	; 0xfffff7e0
   8:	392e343a 	stmdbcc	lr!, {r1, r3, r4, r5, sl, ip, sp}
   c:	732b332e 			; <UNDEFINED> instruction: 0x732b332e
  10:	33326e76 	teqcc	r2, #1888	; 0x760
  14:	37373131 			; <UNDEFINED> instruction: 0x37373131
  18:	2029312d 	eorcs	r3, r9, sp, lsr #2
  1c:	2e392e34 	mrccs	14, 1, r2, cr9, cr4, {1}
  20:	30322033 	eorscc	r2, r2, r3, lsr r0
  24:	35303531 	ldrcc	r3, [r0, #-1329]!	; 0xfffffacf
  28:	28203932 	stmdacs	r0!, {r1, r4, r5, r8, fp, ip, sp}
  2c:	72657270 	rsbvc	r7, r5, #112, 4
  30:	61656c65 	cmnvs	r5, r5, ror #24
  34:	00296573 	eoreq	r6, r9, r3, ror r5

Disassembly of section .ARM.attributes:

00000000 <_stack-0x80000>:
   0:	00003441 	andeq	r3, r0, r1, asr #8
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000002a 	andeq	r0, r0, sl, lsr #32
  10:	726f4305 	rsbvc	r4, pc, #335544320	; 0x14000000
  14:	2d786574 	cfldr64cs	mvdx6, [r8, #-464]!	; 0xfffffe30
  18:	06003941 	streq	r3, [r0], -r1, asr #18
  1c:	0841070a 	stmdaeq	r1, {r1, r3, r8, r9, sl}^
  20:	12020901 	andne	r0, r2, #16384	; 0x4000
  24:	15011404 	strne	r1, [r1, #-1028]	; 0xfffffbfc
  28:	18031701 	stmdane	r3, {r0, r8, r9, sl, ip}
  2c:	22011a01 	andcs	r1, r1, #4096	; 0x1000
  30:	44012a01 	strmi	r2, [r1], #-2561	; 0xfffff5ff
  34:	Address 0x0000000000000034 is out of bounds.

