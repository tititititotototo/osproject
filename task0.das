
task0:     file format elf32-littlearm
task0
architecture: arm, flags 0x00000012:
EXEC_P, HAS_SYMS
start address 0x00400000

Program Header:
    LOAD off    0x00000054 vaddr 0x00400000 paddr 0x00400000 align 2**2
         filesz 0x0000018c memsz 0x00000190 flags rwx
private flags = 5000200: [Version5 EABI] [soft-float ABI]

Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .text         0000018c  00400000  00400000  00000054  2**2
                  CONTENTS, ALLOC, LOAD, CODE
  1 .bss          00000004  0040018c  0040018c  000001e0  2**2
                  ALLOC
  2 .comment      00000038  00000000  00000000  000001e0  2**0
                  CONTENTS, READONLY
  3 .ARM.attributes 00000039  00000000  00000000  00000218  2**0
                  CONTENTS, READONLY
Contents of section .text:
 400000 04b02de5 00b08de2 0cd04de2 08000be5  ..-.......M.....
 400010 feffffea 04b02de5 00b08de2 14d04de2  ......-.......M.
 400020 0030a0e1 0d304be5 0030a0e3 80334fe3  .0...0K..0...3O.
 400030 08300be5 0000a0e1 08301be5 103093e5  .0.......0...0..
 400040 023003e2 000053e3 faffff0a 08301be5  .0....S......0..
 400050 0d205be5 2020c3e5 00d04be2 04b09de4  . [.  ....K.....
 400060 1eff2fe1 00482de9 04b08de2 08d04de2  ../..H-.......M.
 400070 08000be5 050000ea 08301be5 012083e2  .........0... ..
 400080 08200be5 0030d3e5 0300a0e1 e0ffffeb  . ...0..........
 400090 08301be5 0030d3e5 000053e3 f5ffff1a  .0...0....S.....
 4000a0 04d04be2 0088bde8 00482de9 04b08de2  ..K......H-.....
 4000b0 20d04de2 20000be5 3030a0e3 18304be5   .M. ...00...0K.
 4000c0 7830a0e3 17304be5 0730a0e3 0c300be5  x0...0K..0...0..
 4000d0 190000ea 0c301be5 0331a0e1 20201be5  .....0...1..  ..
 4000e0 3233a0e1 7330efe6 0f3003e2 05304be5  23..s0...0...0K.
 4000f0 05305be5 090053e3 0300009a 05305be5  .0[...S......0[.
 400100 573083e2 05304be5 020000ea 05305be5  W0...0K......0[.
 400110 303083e2 05304be5 0c301be5 093063e2  00...0K..0...0c.
 400120 04204be2 033082e0 05205be5 142043e5  . K..0... [.. C.
 400130 0c301be5 013043e2 0c300be5 0c301be5  .0...0C..0...0..
 400140 000053e3 e2ffffaa 0030a0e3 0e304be5  ..S......0...0K.
 400150 18304be2 0300a0e1 c1ffffeb 04d04be2  .0K...........K.
 400160 0088bde8 00482de9 04b08de2 08d04de2  .....H-.......M.
 400170 08000be5 08001be5 caffffeb 0a00a0e3  ................
 400180 a3ffffeb 04d04be2 0088bde8           ......K.....    
Contents of section .comment:
 0000 4743433a 20283135 3a342e39 2e332b73  GCC: (15:4.9.3+s
 0010 766e3233 31313737 2d312920 342e392e  vn231177-1) 4.9.
 0020 33203230 31353035 32392028 70726572  3 20150529 (prer
 0030 656c6561 73652900                    elease).        
Contents of section .ARM.attributes:
 0000 41380000 00616561 62690001 2e000000  A8...aeabi......
 0010 05436f72 7465782d 41390006 0a074108  .Cortex-A9....A.
 0020 01090212 04140115 01170318 0119011a  ................
 0030 011e0622 012a0144 01                 ...".*.D.       

Disassembly of section .text:

00400000 <main>:
  400000:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400004:	e28db000 	add	fp, sp, #0
  400008:	e24dd00c 	sub	sp, sp, #12
  40000c:	e50b0008 	str	r0, [fp, #-8]
  400010:	eafffffe 	b	400010 <main+0x10>

00400014 <uart_putc>:
  400014:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  400018:	e28db000 	add	fp, sp, #0
  40001c:	e24dd014 	sub	sp, sp, #20
  400020:	e1a03000 	mov	r3, r0
  400024:	e54b300d 	strb	r3, [fp, #-13]
  400028:	e3a03000 	mov	r3, #0
  40002c:	e34f3380 	movt	r3, #62336	; 0xf380
  400030:	e50b3008 	str	r3, [fp, #-8]
  400034:	e1a00000 	nop			; (mov r0, r0)
  400038:	e51b3008 	ldr	r3, [fp, #-8]
  40003c:	e5933010 	ldr	r3, [r3, #16]
  400040:	e2033002 	and	r3, r3, #2
  400044:	e3530000 	cmp	r3, #0
  400048:	0afffffa 	beq	400038 <uart_putc+0x24>
  40004c:	e51b3008 	ldr	r3, [fp, #-8]
  400050:	e55b200d 	ldrb	r2, [fp, #-13]
  400054:	e5c32020 	strb	r2, [r3, #32]
  400058:	e24bd000 	sub	sp, fp, #0
  40005c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  400060:	e12fff1e 	bx	lr

00400064 <uart_puts>:
  400064:	e92d4800 	push	{fp, lr}
  400068:	e28db004 	add	fp, sp, #4
  40006c:	e24dd008 	sub	sp, sp, #8
  400070:	e50b0008 	str	r0, [fp, #-8]
  400074:	ea000005 	b	400090 <uart_puts+0x2c>
  400078:	e51b3008 	ldr	r3, [fp, #-8]
  40007c:	e2832001 	add	r2, r3, #1
  400080:	e50b2008 	str	r2, [fp, #-8]
  400084:	e5d33000 	ldrb	r3, [r3]
  400088:	e1a00003 	mov	r0, r3
  40008c:	ebffffe0 	bl	400014 <uart_putc>
  400090:	e51b3008 	ldr	r3, [fp, #-8]
  400094:	e5d33000 	ldrb	r3, [r3]
  400098:	e3530000 	cmp	r3, #0
  40009c:	1afffff5 	bne	400078 <uart_puts+0x14>
  4000a0:	e24bd004 	sub	sp, fp, #4
  4000a4:	e8bd8800 	pop	{fp, pc}

004000a8 <uart_puthex>:
  4000a8:	e92d4800 	push	{fp, lr}
  4000ac:	e28db004 	add	fp, sp, #4
  4000b0:	e24dd020 	sub	sp, sp, #32
  4000b4:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
  4000b8:	e3a03030 	mov	r3, #48	; 0x30
  4000bc:	e54b3018 	strb	r3, [fp, #-24]	; 0xffffffe8
  4000c0:	e3a03078 	mov	r3, #120	; 0x78
  4000c4:	e54b3017 	strb	r3, [fp, #-23]	; 0xffffffe9
  4000c8:	e3a03007 	mov	r3, #7
  4000cc:	e50b300c 	str	r3, [fp, #-12]
  4000d0:	ea000019 	b	40013c <uart_puthex+0x94>
  4000d4:	e51b300c 	ldr	r3, [fp, #-12]
  4000d8:	e1a03103 	lsl	r3, r3, #2
  4000dc:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
  4000e0:	e1a03332 	lsr	r3, r2, r3
  4000e4:	e6ef3073 	uxtb	r3, r3
  4000e8:	e203300f 	and	r3, r3, #15
  4000ec:	e54b3005 	strb	r3, [fp, #-5]
  4000f0:	e55b3005 	ldrb	r3, [fp, #-5]
  4000f4:	e3530009 	cmp	r3, #9
  4000f8:	9a000003 	bls	40010c <uart_puthex+0x64>
  4000fc:	e55b3005 	ldrb	r3, [fp, #-5]
  400100:	e2833057 	add	r3, r3, #87	; 0x57
  400104:	e54b3005 	strb	r3, [fp, #-5]
  400108:	ea000002 	b	400118 <uart_puthex+0x70>
  40010c:	e55b3005 	ldrb	r3, [fp, #-5]
  400110:	e2833030 	add	r3, r3, #48	; 0x30
  400114:	e54b3005 	strb	r3, [fp, #-5]
  400118:	e51b300c 	ldr	r3, [fp, #-12]
  40011c:	e2633009 	rsb	r3, r3, #9
  400120:	e24b2004 	sub	r2, fp, #4
  400124:	e0823003 	add	r3, r2, r3
  400128:	e55b2005 	ldrb	r2, [fp, #-5]
  40012c:	e5432014 	strb	r2, [r3, #-20]	; 0xffffffec
  400130:	e51b300c 	ldr	r3, [fp, #-12]
  400134:	e2433001 	sub	r3, r3, #1
  400138:	e50b300c 	str	r3, [fp, #-12]
  40013c:	e51b300c 	ldr	r3, [fp, #-12]
  400140:	e3530000 	cmp	r3, #0
  400144:	aaffffe2 	bge	4000d4 <uart_puthex+0x2c>
  400148:	e3a03000 	mov	r3, #0
  40014c:	e54b300e 	strb	r3, [fp, #-14]
  400150:	e24b3018 	sub	r3, fp, #24
  400154:	e1a00003 	mov	r0, r3
  400158:	ebffffc1 	bl	400064 <uart_puts>
  40015c:	e24bd004 	sub	sp, fp, #4
  400160:	e8bd8800 	pop	{fp, pc}

00400164 <uart_puthexnl>:
  400164:	e92d4800 	push	{fp, lr}
  400168:	e28db004 	add	fp, sp, #4
  40016c:	e24dd008 	sub	sp, sp, #8
  400170:	e50b0008 	str	r0, [fp, #-8]
  400174:	e51b0008 	ldr	r0, [fp, #-8]
  400178:	ebffffca 	bl	4000a8 <uart_puthex>
  40017c:	e3a0000a 	mov	r0, #10
  400180:	ebffffa3 	bl	400014 <uart_putc>
  400184:	e24bd004 	sub	sp, fp, #4
  400188:	e8bd8800 	pop	{fp, pc}

Disassembly of section .bss:

0040018c <__bss_start>:
  40018c:	00000000 	andeq	r0, r0, r0

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <__bss_end__+0xcd0b94>
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
   0:	00003841 	andeq	r3, r0, r1, asr #16
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000002e 	andeq	r0, r0, lr, lsr #32
  10:	726f4305 	rsbvc	r4, pc, #335544320	; 0x14000000
  14:	2d786574 	cfldr64cs	mvdx6, [r8, #-464]!	; 0xfffffe30
  18:	06003941 	streq	r3, [r0], -r1, asr #18
  1c:	0841070a 	stmdaeq	r1, {r1, r3, r8, r9, sl}^
  20:	12020901 	andne	r0, r2, #16384	; 0x4000
  24:	15011404 	strne	r1, [r1, #-1028]	; 0xfffffbfc
  28:	18031701 	stmdane	r3, {r0, r8, r9, sl, ip}
  2c:	1a011901 	bne	46438 <_stack-0x39bc8>
  30:	22061e01 	andcs	r1, r6, #1, 28
  34:	44012a01 	strmi	r2, [r1], #-2561	; 0xfffff5ff
  38:	Address 0x0000000000000038 is out of bounds.

