##
##		Kim Soo Hyun(@")
##

PLATFORM = 

VPATH = ../../
INC_PATH = $(VPATH)include
CC = $(PLATFORM)gcc
CFLAGS = -O2 -Wall -g -I$(INC_PATH)
SRCS = test1.c test2.c test3.c
OBJS = $(SRCS:.c=.o)

APP = app1
APP_ALL = $(APP)_static $(APP)_shared

all : $(APP)_static $(APP)_shared mv_obj

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

clean :
	rm -f $(APP_ALL) ../obj/*
clean_static : 
	rm -f $(APP)_static ../obj/*
clean_shared : 
	rm -f $(APP)_shared ../obj/*

dep:
	gccmakedep $(SRCS)

