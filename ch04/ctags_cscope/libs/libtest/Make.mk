##
##		Kim Soo Hyun(@")
##
include .config

PLATFORM = 

#VPATH = ../
#INC_PATH = $(VPATH)include

CC = $(PLATFORM)gcc
CFLAGS = -fPIC -O2 -Wall -g
LDFLAGS = -shared -Wl,-soname,$(LIB_OUT)
ARFLAGS = rcs

SRCS = min.c max.c
OBJS = $(SRCS:.c=.o)
LIB_STATIC = libtest.a
LIB_SHARED = libtest.so

ifeq ($(CONFIG_LIB),static)
all : static
else ifeq ($(CONFIG_LIB),shared)
all : shared
else
all : static shared
endif

make_src :
	@echo "Generate makefile..."
	@rm -f makefile
	@cp Make.mk makefile
	@${CC} ${CFLAGS} -M ${SRCS} >> makefile

static : $(OBJS) $(LIB_STATIC)
$(LIB_STATIC) :
	@echo "create static library...."
	$(AR) $(ARFLAGS) $@ $^

shared : $(OBJS) $(LIB_SHARED)
$(LIB_SHARED) :
	@echo "create shared library...."
	$(CC) $(LDFLAGS) -o $@ $^

distclean: clobber
mrproper: clobber
clobber: clean
	-rm -f makefile .config
	

ifeq ($(CONFIG_LIB),static)
clean : 
	-rm -f $(LIB_STATIC) $(OBJS)
else ifeq ($(CONFIG_LIB),shared)
clean : 
	-rm -f $(LIB_SHARED) $(OBJS)
else
clean :
	-rm -f $(LIB_STATIC) $(LIB_SHARED) $(OBJS)
endif

