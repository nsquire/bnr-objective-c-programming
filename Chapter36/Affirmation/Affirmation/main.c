//
//  main.c
//  Affirmation
//
//  Created by Nicholas Squire on 9/2/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h> // atoi()

int main(int argc, const char * argv[])
{
    
    for (int i = 0; i < argc; i++) {
        printf("arg %d = %s\n", i, argv[i]);
    }
    
    if (argc != 3) {
        fprintf(stderr, "Usage: Affirmation <name> <number>\n");
        return 1;
    }
    
    int count = atoi(argv[2]);
    for (int j = 0; j < count; j++) {
        printf("%s is cool.\n", argv[1]);
    }
    
    return 0;
}

