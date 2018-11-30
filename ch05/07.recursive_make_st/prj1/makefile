##
##		Kim Soo Hyun(@")
##

PLATFORM = 
CC = $(PLATFORM)gcc

all : app1
app1 : static shared

static : 
	cd src; make CC=$(CC) static
	cp src/app1_static .
shared : 
	cd src; make CC=$(CC) shared
	cp src/app1_shared .

clean :
	-cd src; make clean
	-rm app1_static app1_shared
clean_static : 
	-cd src; make clean_static
	-rm app1_static
clean_shared : 
	-cd src; make clean_shared
	-rm app1_shared

