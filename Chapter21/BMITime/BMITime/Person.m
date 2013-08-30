//
//  Person.m
//  BMITime
//
//  Created by Nicholas Squire on 8/24/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#import "Person.h"

@implementation Person

//- (float)heightInMeters
//{
//    return heightInMeters;
//}
//
//- (void)setHeightInMeters:(float)h
//{
//    heightInMeters = h;
//}
//
//- (int)weightInKilos
//{
//    return weightInKilos;
//}
//
//- (void)setWeightInKilos:(int)w
//{
//    weightInKilos = w;
//}

@synthesize heightInMeters;
@synthesize weightInKilos;

// This method calculates the Body Mass Index
- (float)bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

@end
