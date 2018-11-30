##
##		Kim Soo Hyun(@")
##

PLATFORM = 
CC = $(PLATFORM)gcc

all : app2
app2 : static shared

static : 
	cd src; make CC=$(CC) static
	cp src/app2_static .
shared : 
	cd src; make CC=$(CC) shared
	cp src/app2_shared .

clean :
	-cd src; make clean
	-rm app2_static app2_shared
clean_static : 
	-cd src; make clean_static
	-rm app2_static
clean_shared : 
	-cd src; make clean_shared
	-rm app2_shared

