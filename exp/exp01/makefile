hello: hello.o
	ld hello.o -o hello

hello.o: hello.asm
	nasm -f elf64 hello.asm

clean:
	-rm -f *.o
