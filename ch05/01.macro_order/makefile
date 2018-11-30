CC = gcc
CFLAGS = -O2 -Wall -g
SRCS = test1.c test2.c test3.c
OBJS = $(SRCS:.c=.o)

test: $(OBJS)
	$(CC) -o $@ $^

clean:
	rm $(OBJS) test

dep:
	gccmakedep $(SRCS)

