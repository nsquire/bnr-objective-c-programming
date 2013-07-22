//
//  main.c
//  BeerSong
//
//  Created by Nicholas Squire on 7/21/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#include <stdio.h>

void singThatSong(int numberOfBottles)
{
    if (numberOfBottles == 0) {
        printf("There are simply no more bottles of beer on the wall.\n");
    } else {
        printf("%d bottles of beer on the wall. %d bottles of beer.\n", numberOfBottles, numberOfBottles);
        int oneFewer = numberOfBottles - 1;
        printf("Take one down, pass it around, %d bottles of beer on the wall.\n", oneFewer);
        singThatSong(oneFewer); // This function calls itself!
        printf("Put a bottle in the recycling, %d empty bottles in the bin.\n", numberOfBottles);
    }
}

int main(int argc, const char * argv[])
{
    singThatSong(99);
    return 0;
}

