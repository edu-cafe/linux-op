##
## Makefile : for Static/Shared/Dynamic Library Programming
##
##		Kim Soo Hyun(@")
##

PLATFORM =
CC = $(PLATFORM)gcc

all : libtest_all

libtest_all : libtest_static libtest_shared

libtest_static:
	@echo "libtest Static Library Build..."
	cd libtest; make CC=$(CC) static

libtest_shared:
	@echo "libtest Shared Library Build..."
	cd libtest; make CC=$(CC) shared

clean :
	cd libtest; make clean

clean_libtest :
	cd libtest; make clean

clean_libtest_static :
	cd libtest; make clean_static
clean_libtest_shared :
	cd libtest; make clean_shared
