exp: exp10.o
	gcc -o exp exp10.o -no-pie
exp10.o: exp10.asm
	nasm -f elf64 -g -F dwarf exp10.asm -l exp10.lst
git:
	git add exp10.asm
	git add Makefile
	git commit -am "calc of float"
clean:
	rm *.o
