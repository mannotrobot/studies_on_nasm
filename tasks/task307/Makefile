task:	task.o
	gcc -o task task.o -no-pie
task.o:	task.asm
	nasm -f elf64 -g -F dwarf task.asm -l task.lst
	git add task.asm
	git add Makefile
clean:
	rm *.o
