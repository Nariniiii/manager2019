CC = gcc
CFlags = -W -Wall
TARGET = manager
OBJECTS = menu.o user.o main.o
D_OBJECTS = menu_d.o user_d.o main_d.o

all : $(TARGET)

manager_debug : $(D_OBJECTS)
	    $(CC) $(CFLAGS) -o $@ $^

menu_d.o : menu.c
	$(CC) -DDEBUG_MODE $(CFLAGS) -c -o $@ $^

user_d.o : user.c
	$(CC) -DDEBUG_MODE $(CFLAGS) -c -o $@ $^

menu_d.o : menu.c
	$(CC) -DDEBUG_MODE $(CFLAGS) -c -o $@ $^

clean :
	rm *.o manager manager_debug
