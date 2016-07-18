
cuteOS:     file format elf32-littlearm
cuteOS
architecture: arm, flags 0x00000012:
EXEC_P, HAS_SYMS
start address 0x00000000

Program Header:
    LOAD off    0x00000054 vaddr 0x00000000 paddr 0x00000000 align 2**2
         filesz 0x000004d8 memsz 0x000004dc flags rwx
private flags = 5000200: [Version5 EABI] [soft-float ABI]

Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .text         00000458  00000000  00000000  00000054  2**2
                  CONTENTS, ALLOC, LOAD, CODE
  1 .rodata       00000080  00000458  00000458  000004ac  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  2 .bss          00000004  000004d8  000004d8  0000052c  2**2
                  ALLOC
  3 .comment      00000038  00000000  00000000  0000052c  2**0
                  CONTENTS, READONLY
  4 .ARM.attributes 00000035  00000000  00000000  00000564  2**0
                  CONTENTS, READONLY
Contents of section .text:
 0000 0d0000ea 14f09fe5 14f09fe5 14f09fe5  ................
 0010 14f09fe5 14f09fe5 14f09fe5 14f09fe5  ................
 0020 b0030000 c4030000 b4030000 b8030000  ................
 0030 bc030000 ec030000 c0030000 400000eb  ............@...
 0040 d3f021e3 0106a0e3 04d040e2 d2f021e3  ..!.......@...!.
 0050 01da40e2 dff021e3 04d09fe5 d3f021e3  ..@...!.......!.
 0060 00f01fe5 00804000 6c000000 00482de9  ......@.l....H-.
 0070 04b08de2 18d04de2 0030a0e3 08300be5  ......M..0...0..
 0080 580400e3 000040e3 7e0000eb 740400e3  X.....@.~...t...
 0090 000040e3 7b0000eb 0f30a0e1 10300be5  ..@.{....0...0..
 00a0 10301be5 14300be5 0d30a0e1 18300be5  .0...0...0...0..
 00b0 18301be5 1c300be5 940400e3 000040e3  .0...0........@.
 00c0 700000eb 6c3000e3 003040e3 0300a0e1  p...l0...0@.....
 00d0 ac0000eb 9c0400e3 000040e3 690000eb  ..........@.i...
 00e0 1c001be5 a70000eb a40400e3 000040e3  ..............@.
 00f0 640000eb 14001be5 a20000eb 0c0000ea  d...............
 0100 010000ef 0030a0e3 0c300be5 020000ea  .....0...0......
 0110 0c301be5 013083e2 0c300be5 0c301be5  .0...0...0...0..
 0120 010653e3 f9ffffba 08301be5 013083e2  ..S......0...0..
 0130 08300be5 08301be5 0f0053e3 efffff9a  .0...0....S.....
 0140 feffffea 0101a0e3 051a80e2 0020a0e3  ............. ..
 0150 042080e4 010050e1 fcffffba bc009fe5  . ....P.........
 0160 011b80e2 b8209fe5 042080e4 010050e1  ..... ... ....P.
 0170 012a82b2 fbffffba 0101a0e3 a4209fe5  .*........... ..
 0180 002080e5 010a80e2 040080e2 002080e5  . ........... ..
 0190 0101a0e3 84109fe5 8c209fe5 042080e4  ......... ... ..
 01a0 010050e1 012682b2 fbffffba 0101a0e3  ..P..&..........
 01b0 78209fe5 002080e5 010a80e2 040080e2  x ... ..........
 01c0 002080e5 54109fe5 010b41e2 60209fe5  . ..T.....A.` ..
 01d0 042080e4 010050e1 012682b2 fbffffba  . ....P..&......
 01e0 0101a0e3 100f02ee c000a0e3 100f03ee  ................
 01f0 0000a0e3 170f07ee 170f08ee 100f11ee  ................
 0200 230cc0e3 8700c0e3 020080e3 010a80e3  #...............
 0210 040080e3 010080e3 100f01ee 0ef0a0e1  ................
 0220 00400040 1a001040 71400040 7a040000  .@.@...@q@.@z...
 0230 7a041040 7a040010 04b02de5 00b08de2  z..@z.....-.....
 0240 14d04de2 0030a0e1 0d304be5 0030a0e3  ..M..0...0K..0..
 0250 80334fe3 08300be5 0000a0e1 08301be5  .3O..0.......0..
 0260 103093e5 023003e2 000053e3 faffff0a  .0...0....S.....
 0270 08301be5 0d205be5 2020c3e5 00d04be2  .0... [.  ....K.
 0280 04b09de4 1eff2fe1 00482de9 04b08de2  ....../..H-.....
 0290 08d04de2 08000be5 050000ea 08301be5  ..M..........0..
 02a0 012083e2 08200be5 0030d3e5 0300a0e1  . ... ...0......
 02b0 e0ffffeb 08301be5 0030d3e5 000053e3  .....0...0....S.
 02c0 f5ffff1a 04d04be2 0088bde8 00482de9  ......K......H-.
 02d0 04b08de2 20d04de2 20000be5 3030a0e3  .... .M. ...00..
 02e0 18304be5 7830a0e3 17304be5 0730a0e3  .0K.x0...0K..0..
 02f0 0c300be5 190000ea 0c301be5 0331a0e1  .0.......0...1..
 0300 20201be5 3233a0e1 7330efe6 0f3003e2    ..23..s0...0..
 0310 05304be5 05305be5 090053e3 0300009a  .0K..0[...S.....
 0320 05305be5 573083e2 05304be5 020000ea  .0[.W0...0K.....
 0330 05305be5 303083e2 05304be5 0c301be5  .0[.00...0K..0..
 0340 093063e2 04204be2 033082e0 05205be5  .0c.. K..0... [.
 0350 142043e5 0c301be5 013043e2 0c300be5  . C..0...0C..0..
 0360 0c301be5 000053e3 e2ffffaa 0030a0e3  .0....S......0..
 0370 0e304be5 18304be2 0300a0e1 c1ffffeb  .0K..0K.........
 0380 04d04be2 0088bde8 00482de9 04b08de2  ..K......H-.....
 0390 08d04de2 08000be5 08001be5 caffffeb  ..M.............
 03a0 0a00a0e3 a3ffffeb 04d04be2 0088bde8  ..........K.....
 03b0 feffffea feffffea feffffea feffffea  ................
 03c0 feffffea ff5f2de9 04a01ee5 ffa4cae3  ....._-.........
 03d0 0a00a0e1 00104fe1 02002de9 030000eb  ......O...-.....
 03e0 0200bde8 01f06fe1 ff9ffde8 feffffea  ......o.........
 03f0 00482de9 04b08de2 08d04de2 08000be5  .H-.......M.....
 0400 ac0400e3 000040e3 9effffeb bc0400e3  ......@.........
 0410 000040e3 9bffffeb 08001be5 aaffffeb  ..@.............
 0420 d00400e3 000040e3 96ffffeb d83400e3  ......@......4..
 0430 003040e3 002093e5 011082e2 d83400e3  .0@.. .......4..
 0440 003040e3 001083e5 0200a0e1 cdffffeb  .0@.............
 0450 04d04be2 0088bde8                    ..K.....        
Contents of section .rodata:
 0458 49414d52 4f4f5420 4f532050 524f4a45  IAMROOT OS PROJE
 0468 43542032 30313621 210a0000 53355043  CT 2016!!...S5PC
 0478 32313020 4d4d5520 456e6162 6c652056  210 MMU Enable V
 0488 65726973 6f6e2121 0a000000 6b6d6169  erison!!....kmai
 0498 6e203a00 5350203a 00000000 5043203a  n :.SP :....PC :
 04a8 00000000 53574920 48616e64 6c65723a  ....SWI Handler:
 04b8 00000000 73797363 616c6c20 6e756d62  ....syscall numb
 04c8 6572203d 00000000 2c20636e 74203d00  er =...., cnt =.
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

00000000 <_start>:
   0:	ea00000d 	b	3c <coreInitialize>
   4:	e59ff014 	ldr	pc, [pc, #20]	; 20 <_exception_vector_table_end>
   8:	e59ff014 	ldr	pc, [pc, #20]	; 24 <vectorSWI>
   c:	e59ff014 	ldr	pc, [pc, #20]	; 28 <vectorPrefetchAbort>
  10:	e59ff014 	ldr	pc, [pc, #20]	; 2c <vectorDataAbort>
  14:	e59ff014 	ldr	pc, [pc, #20]	; 30 <vectorReserved>
  18:	e59ff014 	ldr	pc, [pc, #20]	; 34 <vectorIRQ>
  1c:	e59ff014 	ldr	pc, [pc, #20]	; 38 <vectorFIQ>

00000020 <_exception_vector_table_end>:
  20:	000003b0 			; <UNDEFINED> instruction: 0x000003b0

00000024 <vectorSWI>:
  24:	000003c4 	andeq	r0, r0, r4, asr #7

00000028 <vectorPrefetchAbort>:
  28:	000003b4 			; <UNDEFINED> instruction: 0x000003b4

0000002c <vectorDataAbort>:
  2c:	000003b8 			; <UNDEFINED> instruction: 0x000003b8

00000030 <vectorReserved>:
  30:	000003bc 			; <UNDEFINED> instruction: 0x000003bc

00000034 <vectorIRQ>:
  34:	000003ec 	andeq	r0, r0, ip, ror #7

00000038 <vectorFIQ>:
  38:	000003c0 	andeq	r0, r0, r0, asr #7

0000003c <coreInitialize>:
  3c:	eb000040 	bl	144 <mmusetup>

00000040 <stack_setup>:
  40:	e321f0d3 	msr	CPSR_c, #211	; 0xd3
  44:	e3a00601 	mov	r0, #1048576	; 0x100000
  48:	e240d004 	sub	sp, r0, #4
  4c:	e321f0d2 	msr	CPSR_c, #210	; 0xd2
  50:	e240da01 	sub	sp, r0, #4096	; 0x1000
  54:	e321f0df 	msr	CPSR_c, #223	; 0xdf
  58:	e59fd004 	ldr	sp, [pc, #4]	; 64 <stack_setup+0x24>
  5c:	e321f0d3 	msr	CPSR_c, #211	; 0xd3
  60:	e51ff000 	ldr	pc, [pc, #-0]	; 68 <stack_setup+0x28>
  64:	00408000 	subeq	r8, r0, r0
  68:	0000006c 	andeq	r0, r0, ip, rrx

0000006c <kmain>:
  6c:	e92d4800 	push	{fp, lr}
  70:	e28db004 	add	fp, sp, #4
  74:	e24dd018 	sub	sp, sp, #24
  78:	e3a03000 	mov	r3, #0
  7c:	e50b3008 	str	r3, [fp, #-8]
  80:	e3000458 	movw	r0, #1112	; 0x458
  84:	e3400000 	movt	r0, #0
  88:	eb00007e 	bl	288 <uart_puts>
  8c:	e3000474 	movw	r0, #1140	; 0x474
  90:	e3400000 	movt	r0, #0
  94:	eb00007b 	bl	288 <uart_puts>
  98:	e1a0300f 	mov	r3, pc
  9c:	e50b3010 	str	r3, [fp, #-16]
  a0:	e51b3010 	ldr	r3, [fp, #-16]
  a4:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
  a8:	e1a0300d 	mov	r3, sp
  ac:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
  b0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
  b4:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
  b8:	e3000494 	movw	r0, #1172	; 0x494
  bc:	e3400000 	movt	r0, #0
  c0:	eb000070 	bl	288 <uart_puts>
  c4:	e300306c 	movw	r3, #108	; 0x6c
  c8:	e3403000 	movt	r3, #0
  cc:	e1a00003 	mov	r0, r3
  d0:	eb0000ac 	bl	388 <uart_puthexnl>
  d4:	e300049c 	movw	r0, #1180	; 0x49c
  d8:	e3400000 	movt	r0, #0
  dc:	eb000069 	bl	288 <uart_puts>
  e0:	e51b001c 	ldr	r0, [fp, #-28]	; 0xffffffe4
  e4:	eb0000a7 	bl	388 <uart_puthexnl>
  e8:	e30004a4 	movw	r0, #1188	; 0x4a4
  ec:	e3400000 	movt	r0, #0
  f0:	eb000064 	bl	288 <uart_puts>
  f4:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
  f8:	eb0000a2 	bl	388 <uart_puthexnl>
  fc:	ea00000c 	b	134 <NOINT+0x74>
 100:	ef000001 	svc	0x00000001
 104:	e3a03000 	mov	r3, #0
 108:	e50b300c 	str	r3, [fp, #-12]
 10c:	ea000002 	b	11c <NOINT+0x5c>
 110:	e51b300c 	ldr	r3, [fp, #-12]
 114:	e2833001 	add	r3, r3, #1
 118:	e50b300c 	str	r3, [fp, #-12]
 11c:	e51b300c 	ldr	r3, [fp, #-12]
 120:	e3530601 	cmp	r3, #1048576	; 0x100000
 124:	bafffff9 	blt	110 <NOINT+0x50>
 128:	e51b3008 	ldr	r3, [fp, #-8]
 12c:	e2833001 	add	r3, r3, #1
 130:	e50b3008 	str	r3, [fp, #-8]
 134:	e51b3008 	ldr	r3, [fp, #-8]
 138:	e353000f 	cmp	r3, #15
 13c:	9affffef 	bls	100 <NOINT+0x40>
 140:	eafffffe 	b	140 <NOINT+0x80>

00000144 <mmusetup>:
 144:	e3a00101 	mov	r0, #1073741824	; 0x40000000
 148:	e2801a05 	add	r1, r0, #20480	; 0x5000
 14c:	e3a02000 	mov	r2, #0
 150:	e4802004 	str	r2, [r0], #4
 154:	e1500001 	cmp	r0, r1
 158:	bafffffc 	blt	150 <mmusetup+0xc>

0000015c <mmu_map_kernel>:
 15c:	e59f00bc 	ldr	r0, [pc, #188]	; 220 <controlset+0x30>
 160:	e2801b01 	add	r1, r0, #1024	; 0x400
 164:	e59f20b8 	ldr	r2, [pc, #184]	; 224 <controlset+0x34>
 168:	e4802004 	str	r2, [r0], #4
 16c:	e1500001 	cmp	r0, r1
 170:	b2822a01 	addlt	r2, r2, #4096	; 0x1000
 174:	bafffffb 	blt	168 <mmu_map_kernel+0xc>
 178:	e3a00101 	mov	r0, #1073741824	; 0x40000000
 17c:	e59f20a4 	ldr	r2, [pc, #164]	; 228 <controlset+0x38>
 180:	e5802000 	str	r2, [r0]
 184:	e2800a01 	add	r0, r0, #4096	; 0x1000
 188:	e2800004 	add	r0, r0, #4
 18c:	e5802000 	str	r2, [r0]

00000190 <mmu_map_l1page>:
 190:	e3a00101 	mov	r0, #1073741824	; 0x40000000
 194:	e59f1084 	ldr	r1, [pc, #132]	; 220 <controlset+0x30>
 198:	e59f208c 	ldr	r2, [pc, #140]	; 22c <controlset+0x3c>
 19c:	e4802004 	str	r2, [r0], #4
 1a0:	e1500001 	cmp	r0, r1
 1a4:	b2822601 	addlt	r2, r2, #1048576	; 0x100000
 1a8:	bafffffb 	blt	19c <mmu_map_l1page+0xc>

000001ac <mmu_map_l1_temp>:
 1ac:	e3a00101 	mov	r0, #1073741824	; 0x40000000
 1b0:	e59f2078 	ldr	r2, [pc, #120]	; 230 <controlset+0x40>
 1b4:	e5802000 	str	r2, [r0]
 1b8:	e2800a01 	add	r0, r0, #4096	; 0x1000
 1bc:	e2800004 	add	r0, r0, #4
 1c0:	e5802000 	str	r2, [r0]

000001c4 <mmu_map_sfr>:
 1c4:	e59f1054 	ldr	r1, [pc, #84]	; 220 <controlset+0x30>
 1c8:	e2410b01 	sub	r0, r1, #1024	; 0x400
 1cc:	e59f2060 	ldr	r2, [pc, #96]	; 234 <controlset+0x44>
 1d0:	e4802004 	str	r2, [r0], #4
 1d4:	e1500001 	cmp	r0, r1
 1d8:	b2822601 	addlt	r2, r2, #1048576	; 0x100000
 1dc:	bafffffb 	blt	1d0 <mmu_map_sfr+0xc>

000001e0 <ttbmap>:
 1e0:	e3a00101 	mov	r0, #1073741824	; 0x40000000
 1e4:	ee020f10 	mcr	15, 0, r0, cr2, cr0, {0}

000001e8 <domainset>:
 1e8:	e3a000c0 	mov	r0, #192	; 0xc0
 1ec:	ee030f10 	mcr	15, 0, r0, cr3, cr0, {0}

000001f0 <controlset>:
 1f0:	e3a00000 	mov	r0, #0
 1f4:	ee070f17 	mcr	15, 0, r0, cr7, cr7, {0}
 1f8:	ee080f17 	mcr	15, 0, r0, cr8, cr7, {0}
 1fc:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
 200:	e3c00c23 	bic	r0, r0, #8960	; 0x2300
 204:	e3c00087 	bic	r0, r0, #135	; 0x87
 208:	e3800002 	orr	r0, r0, #2
 20c:	e3800a01 	orr	r0, r0, #4096	; 0x1000
 210:	e3800004 	orr	r0, r0, #4
 214:	e3800001 	orr	r0, r0, #1
 218:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
 21c:	e1a0f00e 	mov	pc, lr
 220:	40004000 	andmi	r4, r0, r0
 224:	4010001a 	andsmi	r0, r0, sl, lsl r0
 228:	40004071 	andmi	r4, r0, r1, ror r0
 22c:	0000047a 	andeq	r0, r0, sl, ror r4
 230:	4010047a 	andsmi	r0, r0, sl, ror r4
 234:	1000047a 	andne	r0, r0, sl, ror r4

00000238 <uart_putc>:
 238:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 23c:	e28db000 	add	fp, sp, #0
 240:	e24dd014 	sub	sp, sp, #20
 244:	e1a03000 	mov	r3, r0
 248:	e54b300d 	strb	r3, [fp, #-13]
 24c:	e3a03000 	mov	r3, #0
 250:	e34f3380 	movt	r3, #62336	; 0xf380
 254:	e50b3008 	str	r3, [fp, #-8]
 258:	e1a00000 	nop			; (mov r0, r0)
 25c:	e51b3008 	ldr	r3, [fp, #-8]
 260:	e5933010 	ldr	r3, [r3, #16]
 264:	e2033002 	and	r3, r3, #2
 268:	e3530000 	cmp	r3, #0
 26c:	0afffffa 	beq	25c <uart_putc+0x24>
 270:	e51b3008 	ldr	r3, [fp, #-8]
 274:	e55b200d 	ldrb	r2, [fp, #-13]
 278:	e5c32020 	strb	r2, [r3, #32]
 27c:	e24bd000 	sub	sp, fp, #0
 280:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 284:	e12fff1e 	bx	lr

00000288 <uart_puts>:
 288:	e92d4800 	push	{fp, lr}
 28c:	e28db004 	add	fp, sp, #4
 290:	e24dd008 	sub	sp, sp, #8
 294:	e50b0008 	str	r0, [fp, #-8]
 298:	ea000005 	b	2b4 <uart_puts+0x2c>
 29c:	e51b3008 	ldr	r3, [fp, #-8]
 2a0:	e2832001 	add	r2, r3, #1
 2a4:	e50b2008 	str	r2, [fp, #-8]
 2a8:	e5d33000 	ldrb	r3, [r3]
 2ac:	e1a00003 	mov	r0, r3
 2b0:	ebffffe0 	bl	238 <uart_putc>
 2b4:	e51b3008 	ldr	r3, [fp, #-8]
 2b8:	e5d33000 	ldrb	r3, [r3]
 2bc:	e3530000 	cmp	r3, #0
 2c0:	1afffff5 	bne	29c <uart_puts+0x14>
 2c4:	e24bd004 	sub	sp, fp, #4
 2c8:	e8bd8800 	pop	{fp, pc}

000002cc <uart_puthex>:
 2cc:	e92d4800 	push	{fp, lr}
 2d0:	e28db004 	add	fp, sp, #4
 2d4:	e24dd020 	sub	sp, sp, #32
 2d8:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
 2dc:	e3a03030 	mov	r3, #48	; 0x30
 2e0:	e54b3018 	strb	r3, [fp, #-24]	; 0xffffffe8
 2e4:	e3a03078 	mov	r3, #120	; 0x78
 2e8:	e54b3017 	strb	r3, [fp, #-23]	; 0xffffffe9
 2ec:	e3a03007 	mov	r3, #7
 2f0:	e50b300c 	str	r3, [fp, #-12]
 2f4:	ea000019 	b	360 <uart_puthex+0x94>
 2f8:	e51b300c 	ldr	r3, [fp, #-12]
 2fc:	e1a03103 	lsl	r3, r3, #2
 300:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
 304:	e1a03332 	lsr	r3, r2, r3
 308:	e6ef3073 	uxtb	r3, r3
 30c:	e203300f 	and	r3, r3, #15
 310:	e54b3005 	strb	r3, [fp, #-5]
 314:	e55b3005 	ldrb	r3, [fp, #-5]
 318:	e3530009 	cmp	r3, #9
 31c:	9a000003 	bls	330 <uart_puthex+0x64>
 320:	e55b3005 	ldrb	r3, [fp, #-5]
 324:	e2833057 	add	r3, r3, #87	; 0x57
 328:	e54b3005 	strb	r3, [fp, #-5]
 32c:	ea000002 	b	33c <uart_puthex+0x70>
 330:	e55b3005 	ldrb	r3, [fp, #-5]
 334:	e2833030 	add	r3, r3, #48	; 0x30
 338:	e54b3005 	strb	r3, [fp, #-5]
 33c:	e51b300c 	ldr	r3, [fp, #-12]
 340:	e2633009 	rsb	r3, r3, #9
 344:	e24b2004 	sub	r2, fp, #4
 348:	e0823003 	add	r3, r2, r3
 34c:	e55b2005 	ldrb	r2, [fp, #-5]
 350:	e5432014 	strb	r2, [r3, #-20]	; 0xffffffec
 354:	e51b300c 	ldr	r3, [fp, #-12]
 358:	e2433001 	sub	r3, r3, #1
 35c:	e50b300c 	str	r3, [fp, #-12]
 360:	e51b300c 	ldr	r3, [fp, #-12]
 364:	e3530000 	cmp	r3, #0
 368:	aaffffe2 	bge	2f8 <uart_puthex+0x2c>
 36c:	e3a03000 	mov	r3, #0
 370:	e54b300e 	strb	r3, [fp, #-14]
 374:	e24b3018 	sub	r3, fp, #24
 378:	e1a00003 	mov	r0, r3
 37c:	ebffffc1 	bl	288 <uart_puts>
 380:	e24bd004 	sub	sp, fp, #4
 384:	e8bd8800 	pop	{fp, pc}

00000388 <uart_puthexnl>:
 388:	e92d4800 	push	{fp, lr}
 38c:	e28db004 	add	fp, sp, #4
 390:	e24dd008 	sub	sp, sp, #8
 394:	e50b0008 	str	r0, [fp, #-8]
 398:	e51b0008 	ldr	r0, [fp, #-8]
 39c:	ebffffca 	bl	2cc <uart_puthex>
 3a0:	e3a0000a 	mov	r0, #10
 3a4:	ebffffa3 	bl	238 <uart_putc>
 3a8:	e24bd004 	sub	sp, fp, #4
 3ac:	e8bd8800 	pop	{fp, pc}

000003b0 <coreUndefinedHandler>:
 3b0:	eafffffe 	b	3b0 <coreUndefinedHandler>

000003b4 <corePrefetchAbortHandler>:
 3b4:	eafffffe 	b	3b4 <corePrefetchAbortHandler>

000003b8 <coreDataAbortHandler>:
 3b8:	eafffffe 	b	3b8 <coreDataAbortHandler>

000003bc <coreReservedHandler>:
 3bc:	eafffffe 	b	3bc <coreReservedHandler>

000003c0 <coreFIQHandler>:
 3c0:	eafffffe 	b	3c0 <coreFIQHandler>

000003c4 <coreSWIHandler>:
 3c4:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
 3c8:	e51ea004 	ldr	sl, [lr, #-4]
 3cc:	e3caa4ff 	bic	sl, sl, #-16777216	; 0xff000000
 3d0:	e1a0000a 	mov	r0, sl
 3d4:	e14f1000 	mrs	r1, SPSR
 3d8:	e92d0002 	stmfd	sp!, {r1}
 3dc:	eb000003 	bl	3f0 <eventsSWIHandler>
 3e0:	e8bd0002 	ldmfd	sp!, {r1}
 3e4:	e16ff001 	msr	SPSR_fsxc, r1
 3e8:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^

000003ec <coreIRQHandler>:
 3ec:	eafffffe 	b	3ec <coreIRQHandler>

000003f0 <eventsSWIHandler>:
 3f0:	e92d4800 	push	{fp, lr}
 3f4:	e28db004 	add	fp, sp, #4
 3f8:	e24dd008 	sub	sp, sp, #8
 3fc:	e50b0008 	str	r0, [fp, #-8]
 400:	e30004ac 	movw	r0, #1196	; 0x4ac
 404:	e3400000 	movt	r0, #0
 408:	ebffff9e 	bl	288 <uart_puts>
 40c:	e30004bc 	movw	r0, #1212	; 0x4bc
 410:	e3400000 	movt	r0, #0
 414:	ebffff9b 	bl	288 <uart_puts>
 418:	e51b0008 	ldr	r0, [fp, #-8]
 41c:	ebffffaa 	bl	2cc <uart_puthex>
 420:	e30004d0 	movw	r0, #1232	; 0x4d0
 424:	e3400000 	movt	r0, #0
 428:	ebffff96 	bl	288 <uart_puts>
 42c:	e30034d8 	movw	r3, #1240	; 0x4d8
 430:	e3403000 	movt	r3, #0
 434:	e5932000 	ldr	r2, [r3]
 438:	e2821001 	add	r1, r2, #1
 43c:	e30034d8 	movw	r3, #1240	; 0x4d8
 440:	e3403000 	movt	r3, #0
 444:	e5831000 	str	r1, [r3]
 448:	e1a00002 	mov	r0, r2
 44c:	ebffffcd 	bl	388 <uart_puthexnl>
 450:	e24bd004 	sub	sp, fp, #4
 454:	e8bd8800 	pop	{fp, pc}

Disassembly of section .rodata:

00000458 <.LC0>:
 458:	524d4149 	subpl	r4, sp, #1073741842	; 0x40000012
 45c:	20544f4f 	subscs	r4, r4, pc, asr #30
 460:	5020534f 	eorpl	r5, r0, pc, asr #6
 464:	454a4f52 	strbmi	r4, [sl, #-3922]	; 0xfffff0ae
 468:	32205443 	eorcc	r5, r0, #1124073472	; 0x43000000
 46c:	21363130 	teqcs	r6, r0, lsr r1
 470:	00000a21 	andeq	r0, r0, r1, lsr #20

00000474 <.LC1>:
 474:	43503553 	cmpmi	r0, #348127232	; 0x14c00000
 478:	20303132 	eorscs	r3, r0, r2, lsr r1
 47c:	20554d4d 	subscs	r4, r5, sp, asr #26
 480:	62616e45 	rsbvs	r6, r1, #1104	; 0x450
 484:	5620656c 	strtpl	r6, [r0], -ip, ror #10
 488:	73697265 	cmnvc	r9, #1342177286	; 0x50000006
 48c:	21216e6f 			; <UNDEFINED> instruction: 0x21216e6f
 490:	0000000a 	andeq	r0, r0, sl

00000494 <.LC2>:
 494:	69616d6b 	stmdbvs	r1!, {r0, r1, r3, r5, r6, r8, sl, fp, sp, lr}^
 498:	003a206e 	eorseq	r2, sl, lr, rrx

0000049c <.LC3>:
 49c:	3a205053 	bcc	8145f0 <_stack+0x7945f0>
 4a0:	00000000 	andeq	r0, r0, r0

000004a4 <.LC4>:
 4a4:	3a204350 	bcc	8111ec <_stack+0x7911ec>
 4a8:	00000000 	andeq	r0, r0, r0

000004ac <.LC0>:
 4ac:	20495753 	subcs	r5, r9, r3, asr r7
 4b0:	646e6148 	strbtvs	r6, [lr], #-328	; 0xfffffeb8
 4b4:	3a72656c 	bcc	1c99a6c <_stack+0x1c19a6c>
 4b8:	00000000 	andeq	r0, r0, r0

000004bc <.LC1>:
 4bc:	63737973 	cmnvs	r3, #1884160	; 0x1cc000
 4c0:	206c6c61 	rsbcs	r6, ip, r1, ror #24
 4c4:	626d756e 	rsbvs	r7, sp, #461373440	; 0x1b800000
 4c8:	3d207265 	sfmcc	f7, 4, [r0, #-404]!	; 0xfffffe6c
 4cc:	00000000 	andeq	r0, r0, r0

000004d0 <.LC2>:
 4d0:	6e63202c 	cdpvs	0, 6, cr2, cr3, cr12, {1}
 4d4:	003d2074 	eorseq	r2, sp, r4, ror r0

Disassembly of section .bss:

000004d8 <__bss_start>:
 4d8:	00000000 	andeq	r0, r0, r0

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

