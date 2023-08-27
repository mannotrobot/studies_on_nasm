exp: exp06.o
	gcc -o exp exp06.o -no-pie

exp06.o:	exp06.asm
	nasm -f elf64 -g -F dwarf exp06.asm -l exp06.lst
	git add exp06.asm
	git add Makefile
clean:
	rm *.o
