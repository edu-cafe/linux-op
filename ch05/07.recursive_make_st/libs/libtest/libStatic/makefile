##
## Makefile : for Static/Shared/Dynamic Library Programming
##
##		Kim Soo Hyun(@")
##

PLATFORM = 

CC = $(PLATFORM)gcc
CFLAGS = -fPIC -Wall -O2 -g
ARFLAGS = rcs
...........

LIB_OBJS = min.o max.o
LIB_OUT = libtest.a

all : $(LIB_OBJS) $(LIB_OUT)

$(LIB_OUT) : $(LIB_OBJS)
	$(AR) $(ARFLAGS) $@ $^
	rm $(LIB_OBJS)

clean :
	rm -f $(LIB_OBJS) $(LIB_OUT)


