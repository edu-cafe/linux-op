#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(int argc, char *argv[])
{
	int i;
	for(i=1; i<=atoi(argv[1]); i++) {
		printf("Task2_%d!!\n", i);
		sleep(2);
	}
	return 0;
}
