//
//  main.m
//  HostName
//
//  Created by Nicholas Squire on 8/22/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        // Challenge from chapter 14
        NSString *host = [[NSHost currentHost] localizedName];
        NSLog(@"Computer host name is: %@", host);
    }
    
    return 0;
}

