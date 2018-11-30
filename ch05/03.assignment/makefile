CC = gcc
CFLAGS = -O2 -Wall -g
SRCS = test1.c test2.c
OBJS1 = $(SRCS:.c=.o)
OBJS2 := $(SRCS:.c=.o)
SRCS += test3.c
OBJS = $(SRCS:.c=.o)

test: $(OBJS)
	$(CC) -o $@ $^

info:
	@echo "SRCS-->"
	@echo $(SRCS)
	@echo "OBJS-->"
	@echo $(OBJS)
	@echo "OBJS1-->"
	@echo $(OBJS1)
	@echo "OBJS2-->"
	@echo $(OBJS2)
clean:
	rm $(OBJS) test

dep:
	gccmakedep $(SRCS)
