//
//  main.m
//  PropertyList
//
//  Created by Nicholas Squire on 8/31/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Array
        NSArray *testArray = [NSArray arrayWithObjects:@"Test array...", nil];
        
        // Dictionary
        NSDictionary *testDictionary = [NSDictionary dictionaryWithObject:@"Test dictionary..." forKey:@"key"];
        
        // String
        NSString *testString = @"Test string...";
        
        // Data
        NSString *dataString = @"Test data...";
        const char *utfString = [dataString UTF8String];
        NSData *testData = [NSData dataWithBytes:utfString
                                      length:strlen(utfString)];
        
        // Date
        NSDate *testDate = [[NSDate alloc] init];
        
        // Integer
        NSNumber *testInt = [NSNumber numberWithInt:100];
        
        // Float
        NSNumber *testFloat = [NSNumber numberWithFloat:1234.5678];
        
        // Boolean
        NSNumber *testBool = [NSNumber numberWithBool:YES];
        
        NSArray *plistArray = [NSArray arrayWithObjects:testArray, testDictionary, testString, testData, testDate, testInt, testFloat, testBool, nil];
        
        [plistArray writeToFile:@"/tmp/chapter_26_challenge.plist" atomically:YES];
    }
    
    return 0;
}

