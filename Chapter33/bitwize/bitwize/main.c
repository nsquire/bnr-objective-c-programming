//
//  main.c
//  bitwize
//
//  Created by Nicholas Squire on 9/2/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#include <stdio.h>
#include <string.h>     /* strcat */
#include <stdlib.h>     /* strtol */

//assumes little endian
void printBits(size_t const size, void const * const ptr)
{
    unsigned char *b = (unsigned char*) ptr;
    unsigned char byte;
    int i, j;
    
    for (i=size-1;i>=0;i--)
    {
        for (j=7;j>=0;j--)
        {
            byte = b[i] & (1<<j);
            byte >>= j;
            printf("%u", byte);
        }
    }
    puts("");
}

int main(int argc, const char * argv[])
{
    unsigned char a = 0x3c;
    unsigned char b = 0xa9;
    unsigned char c = a | b;
    
    printf("Hex: %x | %x = %x\n", a, b, c);
    printf("Decimal: %d | %d = %d\n", a, b, c);
    
    unsigned char d = a & b;
    
    printf("Hex: %x & %x = %x\n", a, b, d);
    printf("Decimal: %d & %d = %d\n", a, b, d);
    
    unsigned char e = a ^ b;
    
    printf("Hex: %x ^ %x = %x\n", a, b, e);
    printf("Decimal: %d ^ %d = %d\n", a, b, e);
    
    unsigned char f = ~b;
    
    printf("Hex: the complement of %x is %x\n", b, f);
    printf("Decimal: the complement of %d is %d\n", b, f);
    
    unsigned char g = a << 2;
    
    printf("Hex: %x shifted left two places is %x\n", a, g);
    printf("Decimal: %d shifted left two places is %d\n", a, g);
    
    unsigned char h = a >> 1;
    
    printf("Hex: %x shifted right one place is %x\n", a, h);
    printf("Decimal: %d shifted right one place is %d\n", a, h);
    
    // Challenge from chapter 33
    unsigned long int challenge = 1;
    
    for (int i = 0; i < 64; i++) {
        challenge = challenge << 2;
        challenge = challenge + 1;
    }
    
    printf("Test number: ");
    printBits(sizeof(challenge), &challenge);
    
    return 0;
}

