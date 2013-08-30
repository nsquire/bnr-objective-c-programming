//
//  Employee.h
//  BMITime
//
//  Created by Nicholas Squire on 8/25/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@class Asset;

@interface Employee : Person
{
    int employeeID;
    NSMutableSet *assets;
}

@property int employeeID;

- (void)addAssetsObject:(Asset *)a;
- (unsigned int)valueOfAssets;

@end
