##
## Makefile : for Static/Shared/Dynamic Library Programming
##
##		Kim Soo Hyun(@")
##

PLATFORM = 

CC = $(PLATFORM)gcc
CFLAGS = -fPIC -Wall -O2 -g
LDFLAGS = -shared -Wl,-soname,$(LIB_OUT)
ARFLAGS = rcs
VPATH = ../libSrc

LIB_OBJS = min.o max.o
LIB_OUT = libtest.so

all : $(LIB_OUT)

$(LIB_OUT) : $(LIB_OBJS)
	$(CC) $(LDFLAGS) -o $@ $^
	rm $(LIB_OBJS)

clean :
	rm -f $(LIB_OBJS) $(LIB_OUT)


