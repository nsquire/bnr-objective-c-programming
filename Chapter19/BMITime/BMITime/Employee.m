//
//  Employee.m
//  BMITime
//
//  Created by Nicholas Squire on 8/25/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#import "Employee.h"
#import "Asset.h"

@implementation Employee

@synthesize employeeID;

- (float)bodyMassIndex
{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

- (void)addAssetsObject:(Asset *)a
{
    // Is assets nil?
    if (!assets) {
        // Create the array
        assets = [[NSMutableArray alloc] init];
    }
    
    [assets addObject:a];
}

- (unsigned int)valueOfAssets
{
    // Sum up the resale value of the assets
    unsigned int sum = 0;
    for (Asset *a in assets) {
        sum += [a resaleValue];
    }
    
    return sum;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %d: $%d in assets>",
            [self employeeID],
            [self valueOfAssets]];
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
