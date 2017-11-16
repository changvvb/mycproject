main : first.o second.o
	gcc first.o second.o -o main

first.o : first.c
	gcc -c first.c -o first.o -I./inc

second.o : second.c 
	gcc -c second.c -o second.o

install :
	cp ./main /bin/
uninstall:
	rm /bin/main
clean:
	rm ./first.o ./second.o ./main
