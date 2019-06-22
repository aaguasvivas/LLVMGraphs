#include <stdio.h>
int main()
{
    int n, i, sum;
    printf("Enter a value for n: \n");
    scanf("%d", &n);

    i = 1;

    sum = 0;

    while (i <= n)
    {
        sum = 0;
        int j = 1;
        while (j <= i)
        {
            sum = sum + j;
            j = j + 1;
        }
        printf("\nSum: %i , i: %i ", sum, i);
        i = i + 1;
    }
    printf("\nSum: %i , i: %i ", sum, i);
}