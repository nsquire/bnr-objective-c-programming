//
//  main.m
//  Groceries
//
//  Created by Nicholas Squire on 8/22/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        // Part 1
        NSMutableArray *groceries = [NSMutableArray array];
        [groceries addObject:@"Cheese"];
        [groceries addObject:@"Milk"];
        [groceries addObject:@"Eggs"];
        
        for (NSString *item in groceries) {
            NSLog(@"Grocery item: %@", item);
        }
        
        // Part 2
        NSString *wordsString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                                                  encoding:NSUTF8StringEncoding
                                                                     error:NULL];
        
        // Break it into an array of strings
        NSArray *words = [wordsString componentsSeparatedByString:@"\n"];
        
        // Go through the array one string at a time
        for (int i = 0; i < [words count] - 1; i++) {
            
            // See if two consecutive words match, ignoring case
            if ([[words objectAtIndex:i] caseInsensitiveCompare:[words objectAtIndex:i + 1]] == NSOrderedSame) {
                NSLog(@"%@ same as %@", [words objectAtIndex:i], [words objectAtIndex:i + 1]);
                //break;
            }
        }
    }
    
    return 0;
}

