//
//  main.c
//  Triangle
//
//  Created by Nicholas Squire on 7/21/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#include <stdio.h>

float remainingAngle(float angleA, float angleB)
{
    if ( angleA > 0 && angleB > 0 && (angleA + angleB) < 180 ) {
            return 180.0 - angleA - angleB;
    } else {
        return 0;
    }
    
}

int main(int argc, const char * argv[])
{
    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    printf("The third angle is %.2f\n", angleC);
    return 0;
}

