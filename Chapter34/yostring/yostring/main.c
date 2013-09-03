//
//  main.c
//  yostring
//
//  Created by Nicholas Squire on 9/2/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#include <stdio.h> // For printf
#include <stdlib.h> // For malloc/free
#include <string.h> // For strlen

int main(int argc, const char * argv[])
{
    char x = 0x21; // The character '!'
    
    while (x <= 0x7e ) { // The character '~'
        printf("%x is %c\n", x, x);
        x++;
    }
    
    char y = '!'; // The character '!'
    
    while (y <= '~' ) {
        printf("%x is %c\n", y, y);
        y++;
    }
    
    // Get a pointer to 5 bytes of memory on the heap
    //char *start = malloc(5);
    
//    // Put 'L' in the first byte
//    *start = 'L';
//    
//    // Put 'o' in the second byte
//    *(start + 1) = 'o';
//    
//    // Put 'v' in the third byte
//    *(start + 2) = 'v';
//    
//    // Put 'e' in the fourth byte
//    *(start + 3) = 'e';
//    
//    // Put zero in the fifth byte
//    *(start + 4) = '\0';

//    // Put 'L' in the first byte
//    start[0] = 'L';
//    
//    // Put 'o' in the second byte
//    start[1] = 'o';
//    
//    // Put 'v' in the third byte
//    start[2] = 'v';
//    
//    // Put 'e' in the fourth byte
//    start[3] = 'e';
//
//    // Put zero in the fifth byte
//    start[4] = '\0';

    //const char *start = "Love";
    const char *start = "A backslash after two newlines and a tab:\n\n\t\\";
    
    // Print out the string and its length
    printf("%s has %zu characters\n", start, strlen(start));
    
    // Print out the third letter
    printf("The third letter is %c\n", start[2]);
    
    // Free the memory so it can be reused
    //free(start);
    start = NULL;
    
    return 0;
}

