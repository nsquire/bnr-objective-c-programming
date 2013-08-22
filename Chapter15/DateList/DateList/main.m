//
//  main.m
//  DateList
//
//  Created by Nicholas Squire on 8/22/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        // Create three NSDate objects
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        
        // Create an array containing all three (nil terminates the list)
        NSArray *dateList = [NSArray arrayWithObjects:now, tomorrow, yesterday, nil];
        
        // How many dates are there?
        NSLog(@"There are %lu dates", [dateList count]);
        
        // Print a couple
        NSLog(@"The first date is %@", [dateList objectAtIndex:0]);
        NSLog(@"The third date is %@", [dateList objectAtIndex:2]);
        
        NSUInteger dateCount = [dateList count];
        for (int i = 0; i < dateCount; i++) {
            NSDate *date = [dateList objectAtIndex:i];
            NSLog(@"Here is a date: %@", date);
        }
        
        for (NSDate *date in dateList) {
            NSLog(@"Here is a date: %@", date);
        }
    
        // Create an empty mutable array
        NSMutableArray *mutableDateList = [NSMutableArray array];
    
        // Add the dates to the array
        [mutableDateList addObject:now];
        [mutableDateList addObject:tomorrow];
    
        // Put yesterday at the beginning of the list
        [mutableDateList insertObject:yesterday atIndex:0];
    
        for (NSDate *date in mutableDateList) {
            NSLog(@"Here is a date: %@", date);
        }
    
        // Remove yesterday
        [mutableDateList removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@", [mutableDateList objectAtIndex:0]);
    }
    
    return 0;
}

