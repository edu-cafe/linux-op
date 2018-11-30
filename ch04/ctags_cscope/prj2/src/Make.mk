##
##		Kim Soo Hyun(@")
##
include .config

PLATFORM = 

VPATH = ../../
INC_PATH = $(VPATH)include
CC = $(PLATFORM)gcc
CFLAGS = -O2 -Wall -g -I$(INC_PATH)
SRCS = test21.c test22.c test23.c
OBJS = $(SRCS:.c=.o)

APP = app2
APP_ALL = $(APP)_static $(APP)_shared

ifeq ($(CONFIG_APP),static)
all : static
else ifeq ($(CONFIG_APP),shared)
all : shared
else
all : $(APP)_static $(APP)_shared mv_obj
endif

make_src :
	@echo "Generate makefile..."
	@rm -f makefile
	@cp Make.mk makefile
	@${CC} ${CFLAGS} -M ${SRCS} >> makefile

static : $(APP)_static mv_obj
$(APP)_static : LIB_PATH = $(VPATH)libs/libtest/libStatic
$(APP)_static : $(OBJS)
	@echo "app create using static library...."
	$(CC) -o $@ $^ -L $(LIB_PATH) -ltest

shared : $(APP)_shared mv_obj
$(APP)_shared : LIB_PATH = $(VPATH)libs/libtest/libShared
$(APP)_shared : $(OBJS)
	@echo "app create using shared library...."
	$(CC) -o $@ $^ -L $(LIB_PATH) -ltest

mv_obj :
	-mv $(OBJS) ../obj

distclean: clobber
mrproper: clobber
clobber: clean
	-rm -f makefile .config
	

ifeq ($(CONFIG_APP),static)
clean : 
	-rm -f $(APP)_static ../obj/*
else ifeq ($(CONFIG_APP),shared)
clean : 
	-rm -f $(APP)_shared ../obj/*
else
clean :
	-rm -f $(APP_ALL) ../obj/*
endif

