//
//  main.c
//  Coolness
//
//  Created by Nicholas Squire on 8/4/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int i = 0;
    while (i < 12) {
        printf("%d. Nick is cool\n", i);
        i++;
    }
    
    i = 0;
    for (i = 0; i < 12; i++) {
        printf("Checking i = %d\n", i);
        if (i + 90 == i * i) {
            break;
        }
        
        //printf("%d. Nick is cool\n", i);
    }
    
    printf("The answer is %d\n", i);
    
    i = 0;
    for (i = 0; i < 12; i++) {
        if (i % 3 == 0) {
            continue;
        }
        
        printf("Checking i = %d\n", i);
        if (i + 90 == i * i) {
            break;
        }
    }
    printf("The answer is %d\n", i);
    
    i = 0;
    do {
        printf("%d. Nick is cool\n", i);
        i++;
    } while (i < 13);
    
    // Challenge for chapter 7
    for (int i = 99; i >= 0; i-=3) {
        printf("%d\n", i);
        
        if (i % 5 == 0) {
            printf("Found one!\n");
        }
    }
    
    return 0;
}

