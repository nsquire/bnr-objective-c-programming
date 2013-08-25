//
//  Employee.m
//  BMITime
//
//  Created by Nicholas Squire on 8/25/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#import "Employee.h"

@implementation Employee

@synthesize employeeID;

- (float)bodyMassIndex
{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

@end
