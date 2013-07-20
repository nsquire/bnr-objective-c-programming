//
//  main.c
//  TwoFloats
//
//  Created by Nicholas Squire on 7/19/13.
//
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    float firstFloat = 3.14;
    float secondFloat = 42.0;
    
    double anotherVariable = firstFloat + secondFloat;
    
    printf("Sum of the two floats is %f", anotherVariable);
    
    return 0;
}

