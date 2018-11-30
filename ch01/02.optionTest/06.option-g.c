#include <stdio.h>
#define	NO	1000
int gv1 = 10, gv2 = 20;
int gv3;
int main(void)
{
    int lv1 = 1, lv2 = 2, lv3;
    printf("Main Start..\n");
    printf("gv1:%d, gv2:%d, gv3:%d\n", gv1, gv2, gv3);
    printf("lv1:%d, lv2:%d, lv3:%d\n", lv1, lv2, lv3);
    lv3 = NO;
    printf("lv1:%d, lv2:%d, lv3:%d\n", lv1, lv2, lv3);
    printf("Main End...\n");
    return 0;
}
	
