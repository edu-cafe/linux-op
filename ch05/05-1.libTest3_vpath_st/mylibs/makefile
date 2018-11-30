##
## Makefile : for Static/Shared/Dynamic Library Programming
##
##		Kim Soo Hyun(@")
##

CC = gcc

.............
LIB_SRCS = max.c min.c
LIB_OBJS = $(LIB_SRCS:.c=.o)
ARFLAGS = -rcs

LIB_OUT = libtest.a libtest.so

all : static shared

static : CFLAGS = -O2 -Wall
static : libtest.a
libtest.a : $(LIB_OBJS)
	$(AR) $(ARFLAGS) $@ $^

shared : CFLAGS = -fPIC -O2 -Wall
shared : libtest.so
libtest.so : $(LIB_OBJS)
	$(CC) -shared -o $@ $^

clean : 
	rm -f $(LIB_OUT) $(LIB_OBJS)

clean_static :
	rm -f libtest.a
clean_shared :
	rm -f libtest.so


