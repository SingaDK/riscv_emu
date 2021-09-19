add_addi.bin: add_addi.s
	riscv64-unknown-elf-gcc -Wl,-Ttext=0x0 -nostdlib -o add_addi add_addi.s
	riscv64-unknown-elf-objcopy -O binary add_addi add_addi.bin

clean:
	rm -f add_addi
	rm -f add_addi.bin