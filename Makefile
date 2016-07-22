# CuteOS Makefile

CFLAGS := -I./include -march=armv7-a -mcpu=cortex-a9 -c -v

.c.o:
	arm-none-eabi-gcc $< $(CFLAGS)

.S.o:
	arm-none-eabi-gcc $< $(CFLAGS)	

#BOOTLOADER
BOOTOBJ = start.o cuteOS.bin.o task0.bin.o task1.bin.o

cute-boot:$(BOOTOBJ)
	#arm-none-eabi-ld $(OBJ) -o cute-boot -Ttext 0x00000000 -N -T cute-boot.lds
	arm-none-eabi-ld $(BOOTOBJ) -o cute-boot -N -T cute-boot.lds
	arm-none-eabi-objcopy cute-boot cute-boot.bin -O binary
	arm-none-eabi-nm cute-boot | grep -v '\(compiled\)\|\(\.o$$\)\|\( [aUw] \)\|\(\.\.ng$$\)\|\(LASH[RL]DI\)' | sort > CuteBoot.map
	arm-none-eabi-objdump -D -a -f -p -s -h cute-boot > cute-boot.das
	
start.o: start.S
	arm-none-eabi-gcc start.S $(CFLAGS) -DOS_RAM_BASE=0x40100000 

#KERNEL

KERNEL_OBJ = head.o main.o mmusetup_2.o uart.o exceptions.o swihandler.o irqhandler.o timer.o mmu.o\
             task.o

cuteOS.bin.o : cuteOS
	arm-none-eabi-ld -b binary cuteOS.bin -r -o cuteOS.bin.o

cuteOS : $(KERNEL_OBJ)
	arm-none-eabi-ld $(KERNEL_OBJ) -o cuteOS -Ttext 0x00000000 -N	
	#arm-none-eabi-ld head.o main.o mmusetup_2.o -o cuteOS -Ttext 0x40100000 -N	
	arm-none-eabi-objcopy cuteOS cuteOS.bin -O binary
	arm-none-eabi-nm cuteOS | grep -v '\(compiled\)\|\(\.o$$\)\|\( [aUw] \)\|\(\.\.ng$$\)\|\(LASH[RL]DI\)' | sort > OsCute.map
	arm-none-eabi-objdump -D -a -f -p -s -h cuteOS > cuteOS.das

# TASK 0

TASK0_OBJ = task0.o uart.o

task0.bin.o: task0
	arm-none-eabi-ld -r -o task0.bin.o -b binary task0.bin

task0: $(TASK0_OBJ)
	arm-none-eabi-ld $(TASK0_OBJ) -o task0 -e main -Ttext 0x400000 -N
	arm-none-eabi-objcopy task0 task0.bin -O binary
	arm-none-eabi-nm task0 | grep -v '\(compiled\)\|\(\.o$$\)\|\( [aUw] \)\|\(\.\.ng$$\)\|\(LASH[RL]DI\)' | sort > task0.map
	arm-none-eabi-objdump -D -a -f -p -s -h task0 > task0.das

# TASK 1

TASK1_OBJ = task1.o uart.o

task1.bin.o: task1
	arm-none-eabi-ld -r -o task1.bin.o -b binary task1.bin

task1: $(TASK1_OBJ)
	arm-none-eabi-ld $(TASK1_OBJ) -o task1 -e main -Ttext 0x400000 -N
	arm-none-eabi-objcopy task1 task1.bin -O binary
	arm-none-eabi-nm task1 | grep -v '\(compiled\)\|\(\.o$$\)\|\( [aUw] \)\|\(\.\.ng$$\)\|\(LASH[RL]DI\)' | sort > task1.map
	arm-none-eabi-objdump -D -a -f -p -s -h task1 > task1.das

dbg:
	#gnome-terminal --hide-menubar -e "qemu-system-arm -M smdkc210 -display none -serial stdio -kernel cute-boot.bin" &
	#gnome-terminal --hide-menubar -e "qemu-system-arm -M smdkc210 -display none -serial stdio -kernel $(TARGET)" &
	gnome-terminal --hide-menubar -e "qemu-system-arm -M smdkc210 -display none -serial stdio -kernel cute-boot.bin -s -S" &
	arm-none-eabi-gdb -x .gdbinit
	#arm-none-eabi-gdb -x tools/debugger/gdbinit

run:
	gnome-terminal --hide-menubar -e "qemu-system-arm -M smdkc210 -display none -serial stdio -kernel cute-boot.bin" &

clean:
	rm -f *.o
	rm -f cute-boot
	rm -f cute-boot.bin
	rm -f cuteOS
	rm -f cuteOS.bin
	rm -f task0
	rm -f task0.bin
	rm -f task1
	rm -f task1.bin
	rm -f *.das
	rm -f *.map
