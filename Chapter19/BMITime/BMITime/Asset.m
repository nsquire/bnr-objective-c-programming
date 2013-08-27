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
@synthesize resaleValue;

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: $%d>", [self label], [self resaleValue]];
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
