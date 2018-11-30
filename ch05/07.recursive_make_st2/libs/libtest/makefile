##
## Makefile : for Static/Shared/Dynamic Library Programming
##
##		Kim Soo Hyun(@")
##

PLATFORM =
CC = $(PLATFORM)gcc

all : static shared

static : 
	@echo "Static Library Build..."
	$(MAKE) -C libStatic CC=$(CC)

shared :
	@echo "Shared Library Build..."
	$(MAKE) -C libShared CC=$(CC)

clean :
	$(MAKE) -C libStatic clean
	$(MAKE) -C libShared clean

clean_static :
	$(MAKE) -C libStatic clean
clean_shared :
	$(MAKE) -C libShared clean
