//
//  OwnedAppliance.h
//  Appliances
//
//  Created by Nicholas Squire on 9/2/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#import "Appliance.h"

@interface OwnedAppliance : Appliance
{
    NSMutableSet *ownerNames;
}

// The designated initializer
- (id)initWithProductName:(NSString *)pn
           firstOwnerName:(NSString *)n;

- (void)addOwnerNamesObject:(NSString *)n;
- (void)removeOwnerNamesObject:(NSString *)n;

@end
