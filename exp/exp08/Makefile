exp: exp08.o
	gcc -o exp exp08.o -no-pie
exp08.o: exp08.asm
	nasm -f elf64 -g -F dwarf exp08.asm -l exp08.lst
git:
	git add exp08.asm
	git add Makefile
	git commit -am "arithmetic on assemble"
clean:
	rm *.o
