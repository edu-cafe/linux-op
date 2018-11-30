#CC = gcc
#CFLAGS = -g -O2 -Wall
CFLAGS = -O2 -Wall
SRCS = test1.c test2.c test3.c
OBJS = $(SRCS:.c=.o)

test: $(OBJS)
	$(CC) -o $@ $^

makefile : 
	@echo "Generate makefile..."
	@rm -f $@
	@cp Make.mk $@
	.............

clean:
	rm $(OBJS) test

......:
	-rm $(OBJS) test
	rm -f makefile

