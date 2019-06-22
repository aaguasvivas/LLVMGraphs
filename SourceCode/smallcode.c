#include <stdio.h>
int main()
{
    int x;
    printf("Enter a positive number: ");
    scanf("%d", &x);

    if (x > 10)
    {
        printf("return 0 is control dependent on if (x > 10)\n");
        return 0;
    }
    else
    {
        printf("less than or equal to 10\n");
    }
}