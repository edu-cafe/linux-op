all : check1 check2

check1 : file
	cp $? $@
	cp $? $@.bak

check2 : tmp/file
	cat $?

clean :
	rm check1 check1.bak



