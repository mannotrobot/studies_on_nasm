exp03: exp03.o
	gcc -o exp03 exp03.o -no-pie

exp03.o: exp03.asm
	nasm -f elf64 -g -F dwarf exp03.asm -l exp03.lst
	git add exp03.asm
	git add makefile
clean:
	rm *.o
