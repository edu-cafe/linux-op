#include <stdio.h>
//#define	NO	1000
int main(void)
{
    int lv1 = 1, lv2;
    lv2 = NO;
#ifdef DEBUG
    printf("lv1:%d, lv2:%d\n", lv1, lv2);
#endif
    printf("Main End.\n");
    return 0;
}
