//
//  main.m
//  Appliances
//
//  Created by Nicholas Squire on 9/2/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Appliance.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Appliance *a = [[Appliance alloc] init];
        NSLog(@"a is %@", a);
        //[a setProductName:@"Washing Machine"];
        [a setValue:@"Washing Machine" forKey:@"productName"];
        //[a setVoltage:240];
        [a setValue:[NSNumber numberWithInt:240] forKey:@"voltage"];
        NSLog(@"a is %@", a);
        
        NSLog(@"the product name is %@", [a valueForKey:@"productName"]);
        
        Appliance *b = [[Appliance alloc] init];
        //Appliance *c = [b copy]; // Causes error, NSObject does not itself support the NSCopying protocol - subclasses of NSObject should
        
    }
    
    return 0;
}

