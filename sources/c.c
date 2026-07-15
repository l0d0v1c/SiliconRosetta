#include <stdio.h>

/* 2. Function */
void greet(char *dest, const char *name) {
    sprintf(dest, "Hello, %s", name);
}

/* 8. Recursion */
int factorial(int k) {
    if (k <= 1) return 1;
    return k * factorial(k - 1);
}

int main(void) {
    /* 3. Variables: explicit types, no native dict */
    int n = 5;
    const char *world = "World";
    int numbers[] = {3, 1, 4, 1, 5};
    char message[64];

    /* 4. Output */
    greet(message, world);
    printf("%s\n", message);

    /* 5. Condition */
    if (n > 3)       printf("big\n");
    else if (n == 3) printf("medium\n");
    else             printf("small\n");

    /* 6. For (by index: no for-each) */
    for (int i = 0; i < 5; i++)
        printf("%d\n", numbers[i] * 2);

    /* 7. While */
    while (n > 0)
        n = n - 1;

    /* 9. No exceptions: manual check */
    int d = 0;
    if (d == 0) printf("cannot divide\n");
    else        printf("%d\n", 10 / d);

    return 0;
}
