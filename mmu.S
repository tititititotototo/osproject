.globl flush_cache_tlb

flush_cache_tlb:
	mov r0,#0
	mcr p15,0,r0,c7,c7,0
	mcr p15,0,r0,c8,c7,0
	mov pc,lr

.globl mmu_fill_l2pt

	@r0 - level 2 page table start
	@r1 - level 2 page table end
	@r2 - task base addr and attributes

mmu_fill_l2pt:

1:
	str r2,[r0],#4
	cmp r0,r1
	addlt r2,r2,#0x1000
	blt 1b
	mov pc,lr

.globl mmu_map_l2pt
	
	@ r0 - level 1 page table entry
	@ r1 - level 2 page table base addr and attributes

mmu_map_l2pt:
	
	str r1,[r0]
	mov pc,lr						
