//
//  main.m
//  TimeAfterTime
//
//  Created by Nicholas Squire on 8/19/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSLog(@"The new date lives at %@", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970.", seconds);
        
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000 seconds it will be %@", later);
        
        // Challenge from chapter 12
        NSDateComponents *birthdayDateComponents = [[NSDateComponents alloc] init];
        [birthdayDateComponents setMonth:4];
        [birthdayDateComponents setDay:12];
        [birthdayDateComponents setYear:1981];
        
        NSCalendar *gCal = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *birthday = [gCal dateFromComponents:birthdayDateComponents];
        
        NSLog(@"I've been alive for %f seconds", [now timeIntervalSinceDate:birthday]);
    }
    
    return 0;
}

