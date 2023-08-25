exp04: exp04.o
	gcc -o exp04 exp04.o -no-pie

exp04.o: exp04.asm
	nasm -f elf64 -g -F dwarf exp04.asm -l exp04.lst
	git add exp04.asm
	git add makefile
clean:
	rm *.o
