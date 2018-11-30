CC = gcc
CFLAGS := -O2 -Wall -g
SRCS = test1.c test2.c test3.c
OBJS = $(SRCS:.c=.o)
LIB_OUT = libtest.a
APP_OBJ = task1.o task2.o
APP_OUT = $(APP_OBJ:.o=)

test: $(LIB_OUT) $(APP_OUT)

$(LIB_OUT) : lib/min.o lib/max.o
	$(AR) $(ARFLAGS) -o $@ $^

..............
task1 : task1.o
	$(CC) $(LDFLAGS) -o $@ $<

..............
task2 : task2.o
	$(CC) $(LDFLAGS) -o $@ $<

...... : CFLAGS = -fPIC -O2 -Wall -g

clean:
	-rm -f lib/*.o
	-rm $(APP_OUT) $(APP_OBJ) $(LIB_OUT) 
