##
## Makefile : for Static/Shared/Dynamic Library Programming
##
##		Kim Soo Hyun(@")
##

PLATFORM =
CC = $(PLATFORM)gcc

all : libs prjs

libs : libtest

libtest : libtest_static libtest_shared
libtest_static :
	@echo "----->libtest Static Library Build Start..."
	.............
	@echo "----->libtest Static Library Build Done!!."
libtest_shared :
	@echo "----->libtest Shared Library Build Start..."
	............
	@echo "----->libtest Shared Library Build Done!!."

prjs : app1

app1 :
	@echo "----->Project1 Build Start..."
	.............
	.............
	@echo "----->Project1 Build Done!!."

clean :
	-cd libs/libtest; make clean
	-cd prj1; make clean
	-rm app1_*

clean_libs :
	-cd libs; make clean
clean_libtest :
	-cd libs; make clean_libtest
clean_prjs :
	-cd prj1; make clean
	-rm app1_*
clean_app1 :
	-cd prj1; make clean
	-rm app1_*
