//
//  main.m
//  Stringz
//
//  Created by Nicholas Squire on 8/29/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableString *str = [[NSMutableString alloc] init];
        for (int i = 0; i < 10; i++) {
            [str appendString:@"Nick is cool!\n"];
        }
        
        // Declare a pointer to an NSError object, but don't instantiate it.
        // The NSError instance will only be created if there is, in fact, an error.
        NSError *error = nil;
        
        // Pass the NSError pointer by reference to the NSString method
        BOOL success = [str writeToFile:@"/tmp/cool.txt"
                             atomically:YES
                               encoding:NSUTF8StringEncoding
                                  error:&error];
        
        // Test the returned BOOL, and query the NSError if the write failed
        if (success) {
            NSLog(@"done writing /tmp/cool.txt");
        } else {
            NSLog(@"writing /tmp/cool.txt failed: %@", [error localizedDescription]);
        }
        
        NSError *error2 = nil;
        NSString *str2 = [[NSString alloc] initWithContentsOfFile:@"/etc/resolv.conf"
                                                        encoding:NSASCIIStringEncoding
                                                           error:&error2];
        
        if (!str2) {
            NSLog(@"read failed: %@", error2);
        } else {
            NSLog(@"resolv.conf looks like this: %@", str2);
        }
        
        
    }
    
    return 0;
}

