//
//  main.c
//  Degrees
//
//  Created by Nicholas Squire on 7/21/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

// Declare a global variable
//float lastTemparature;

// Initialize lastTemparature to 50
static float lastTemparature = 50.0;

float fahrenheitFromCencius(float cel)
{
    lastTemparature = cel;
    float fahr = cel * 1.8 + 32.0;
    printf("%f Celsius is %f Fahrenheit\n", cel, fahr);
    
    return fahr;
}

int main(int argc, const char * argv[])
{
    float freezeInC = 0;
    float freezeInF = fahrenheitFromCencius(freezeInC);
    printf("Water freezes at %f degrees Fahrenheit\n", freezeInF);
    printf("The last temperature converted was %f", lastTemparature);
    return EXIT_SUCCESS;
}

