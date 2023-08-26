exp05: exp05.o
	gcc -o exp5 exp05.o -no-pie


exp05.o: exp05.asm
	nasm -f elf64 -g -F dwarf exp05.asm -l exp05.lst
	git add exp05.asm
	git add Makefile
clean:
	rm *.o
