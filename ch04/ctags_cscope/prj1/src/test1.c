#include "a.h"
#include "b.h"
#include "testlib.h"

void func1();
void func2();

int main(void)
{
   int n=NO1;
   printf("test1(%d)\n", n);
   printf("max(5, 2) : %d\n", max(5, 2));
   printf("min(5, 2) : %d\n", min(5, 2));
   func1();
   func2();
   return 0;
}
