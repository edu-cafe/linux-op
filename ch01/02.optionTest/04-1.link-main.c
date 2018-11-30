#include <stdio.h>
#include <stdlib.h>

int f1(int x);
int f2(int x);

int a=10;
int b;
int a2=20;
int b2;

int main()
{
	int c=100, c2;
	char *d = "hello";
	
	printf("Main Start...\n");
	printf("a:%d, a2:%d, b:%d, b2:%d, c:%d, c2:%d\n", 
		a, a2, b, b2, c, c2);
	b = f1(a);
	b2 = f2(a2);
	c2 = f1(c);
	printf("a:%d, a2:%d, b:%d, b2:%d, c:%d, c2:%d\n", 
		a, a2, b, b2, c, c2);

	return 0;
}
