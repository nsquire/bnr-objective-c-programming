//
//  Asset.m
//  BMITime
//
//  Created by Nicholas Squire on 8/27/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#import "Asset.h"

@implementation Asset

@synthesize label;
@synthesize holder;
@synthesize resaleValue;

- (NSString *)description
{
    // Is holder non-nil?
    if ([self holder]) {
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@",
                [self label],
                [self resaleValue],
                [self holder]];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d, unassigned>",
                [self label],
                [self resaleValue]];
    }
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
