.globl coreUndefinedHandler
coreUndefinedHandler:
1:	b 1b

.globl corePrefetchAbortHandler
corePrefetchAbortHandler:
1:	b 1b

.globl coreDataAbortHandler
coreDataAbortHandler:
1:	b 1b

.globl coreReservedHandler
coreReservedHandler:
1:	b 1b

.globl coreFIQHandler
coreFIQHandler:
1:	b 1b

#define svc_stack 0x100000

.globl coreSWIHandler
coreSWIHandler:
	ldr r13, =current
	ldr r13,[r13]         @ r13 -> current
	add r13,r13,#8
	stmia r13,{r0-r14}^   @ save user register !! remember ^ 
	mrs r0,spsr
	stmdb r13,{r0-r14}

	ldr r13,=svc_stack
	ldr r10,[lr,#-4]
	bic r10,r10,#0xFF000000
	mov r0,r10
	
	bl eventsSWIHandler
	
	ldr r13,=next
	ldr r13,[r13]         @ r13 -> next
	add r13,r13,#8
	ldmdb r13,{r0,r14}

	msr spsr_cxsf,r0

	ldmia r13,{r0-r14}^ @ load user register
	movs pc,lr          @ return next task

// .globl coreSWIHandler
// coreSWIHandler:
// 	stmfd sp!,{r0-r12,lr}
// 	ldr r10,[lr,#-4]
// 	bic r10,r10,#0xFF000000
// 	mov r0,r10
// 	mrs r1,spsr
// 	stmfd sp!,{r1}

// 	bl eventsSWIHandler
	
// 	ldmfd sp!,{r1}
// 	msr spsr_cxsf,r1
// 	ldmfd sp!,{r0-r12,pc}^

// #define irq_stack (0x100000-0x1000)

// .globl coreIRQHandler
// coreIRQHandler:
// 	sub r14,r14,#4
// 	ldr r13,=current
// 	ldr r13,[r13]
// 	add r13,r13,#8
// 	stmia r13,{r0-r14}^
// 	mrs r0,spsr
// 	stmdb r13,{r0,r14}
	
// 	ldr r13,=irq_stack
// 	bl eventsIRQHandler
	
// 	ldr r13,=next
// 	ldr r13,[r13]
// 	add r13,r13,#8
// 	ldmdb r13,{r0,r14}
// 	msr cpsr_cxsf,r0
// 	ldmia r13,{r0-r14}^
// 	movs pc,lr

.globl coreIRQHandler
coreIRQHandler:
	sub r14,r14,#4
	stmfd r13!,{r0-r3,r12,r14}
	bl eventsIRQHandler
	ldmfd r13!,{r0-r3,r12,pc}^