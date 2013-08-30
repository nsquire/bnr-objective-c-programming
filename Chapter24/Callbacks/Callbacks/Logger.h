//
//  Logger.h
//  Callbacks
//
//  Created by Nicholas Squire on 8/30/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Logger : NSObject
{
    NSMutableData *incomingData;
}

- (void)sayOuch:(NSTimer *)t;
- (void)zoneChange:(NSNotification *)note;

@end
