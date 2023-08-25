hello: hello.o
	ld hello.o -o hello

hello.o: hello.asm
	nasm -f elf64 -g -F dwarf hello.asm -l hello.lst

clean:
	-rm -f *.o
