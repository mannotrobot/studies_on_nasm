exp: exp07.o
	gcc -o exp exp07.o -no-pie
exp07.o: exp07.asm
	nasm -f elf64 -g -F dwarf exp07.asm -l exp06.lst
	git add exp07.asm
	git add Makefile
clean:
	rm *.o
