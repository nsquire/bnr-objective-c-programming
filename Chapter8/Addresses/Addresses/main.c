//
//  main.c
//  Addresses
//
//  Created by Nicholas Squire on 8/11/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int i = 17;
    int *addressOfI = &i;
    //printf("i stores its value at %p\n", &i);
    printf("i stores its value at %p\n", addressOfI);
    *addressOfI = 89;
    printf("now i is %d\n", i);
    printf("an int is %zu bytes\n", sizeof(i));
    printf("a pointer is %zu bytes\n", sizeof(addressOfI));
    printf("this function starts at %p\n", main);
    printf("the int stored at addressOfI is %d\n", *addressOfI);
    
    // Challenge for chapter 8
    printf("a float is %zu bytes\n", sizeof(float));
    printf("a short is %zu bytes\n", sizeof(short));
    
    short j = 0;
    printf("the value of j is %d\n", j);
    j = 32799; // wraps around after maxing out
    printf("now the value of j is %d\n", j);
    j = 32767; // max value
    printf("now the value of j is %d\n", j);
    
    unsigned short k = 0;
    printf("the value of k is %d\n", k);
    k = 65560;
    printf("now the value of k is %hu\n", k);
    k = 65535; // max value
    printf("now the value of k is %d\n", k);
    
    return 0;
}

