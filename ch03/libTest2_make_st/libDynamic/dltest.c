/* dltest.c */

#include <stdio.h>
#include <stdlib.h>
#include <dlfcn.h>


typedef int (*FP)(int, int);

int main(void)
{
    void *handle;
	FP fp_max, fp_min;
    char *error;

    handle = dlopen("libtest.so", RTLD_LAZY);
    if(!handle) {
        fputs(dlerror(), stderr);
        exit(1);
    }
    fp_max = dlsym(handle, "max");
    if((error = dlerror()) != NULL) {
        fprintf(stderr, "%s", error);
        exit(1);
    }
    fp_min = dlsym(handle, "min");
    if((error = dlerror()) != NULL) {
        fprintf(stderr, "%s", error);
        exit(1);
    }
    printf("max(7, 4) : %d\n", fp_max(7, 4));
    printf("min(5, 2) : %d\n", fp_min(5, 2));
    dlclose(handle);

    return 0;
}

