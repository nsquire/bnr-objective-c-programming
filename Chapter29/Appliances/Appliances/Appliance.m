//
//  Appliance.m
//  Appliances
//
//  Created by Nicholas Squire on 9/2/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#import "Appliance.h"

@implementation Appliance

@synthesize productName;
@synthesize voltage;

- (id)init
{
    return [self initWithProductName:@"Unknown"];
}

- (id)initWithProductName:(NSString *)pn
{
    // Call the NSObject's init method
    self = [super init];
    
    if (self) {
        // Set the product name
        [self setProductName:pn];
        
        // Give voltage a starting value
        voltage = 120;
    }
    
    // Return a pointer to the new object
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: %d volts>", productName, voltage];
}

@end
