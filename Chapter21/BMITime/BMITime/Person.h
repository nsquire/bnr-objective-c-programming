//
//  Person.h
//  BMITime
//
//  Created by Nicholas Squire on 8/24/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    float heightInMeters;
    int weightInKilos;
}

//- (float)heightInMeters;
//- (void)setHeightInMeters:(float)h;
//- (int)weightInKilos;
//- (void)setWeightInKilos:(int)w;
//

// This method calculates the Body Mass Index
- (float)bodyMassIndex;

@property float heightInMeters;
@property int weightInKilos;

@end
