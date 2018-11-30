##
## Makefile : for Static/Shared/Dynamic Library Programming
##
##		Kim Soo Hyun(@")
##

PLATFORM = 

CC = $(PLATFORM)gcc
INC_PATH = include
LIB_PATH = mylibs
CFLAGS = -Wall -O2 -I$(INC_PATH)

APP = app
APP_OUT = app_static app_shared

all : testlibs $(APP_OUT)

testlibs : $(LIB_PATH)/makefile
	cd $(LIB_PATH); make .........

app_static : appSrc/$(APP).o
	@echo "app create using static library...."
	$(CC) -o $@ $< -static -L$(LIB_PATH) -ltest

app_shared : appSrc/$(APP).o
	@echo "app create using shared library...."
	$(CC) -o $@ $< -L$(LIB_PATH) -ltest

clean :
	-cd $(LIB_PATH); make clean
	-rm -f $(APP_OUT) appSrc/$(APP).o


