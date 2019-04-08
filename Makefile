manager : menu.o user.o main.c
	gcc -o manager menu.o user.o main.c
user.o : user.c
	gcc -c -o user.o user.c
menu.o : menu.c
	gcc -c -o menu.o menu.c
clean :
	rm *.o manager
