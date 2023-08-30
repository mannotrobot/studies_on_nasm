exp: exp09.o
	gcc -o exp exp09.o -no-pie
exp09.o: exp09.asm
	nasm -f elf64 -g -F dwarf exp09.asm -l exp09.lst
git:
	git add exp09.asm
	git add Makefile
	git commit -am "introduction to the stack"
clean:
	rm *.o
