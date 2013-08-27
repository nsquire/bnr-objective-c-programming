//
//  Asset.h
//  BMITime
//
//  Created by Nicholas Squire on 8/27/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Asset : NSObject
{
    NSString *label;
    unsigned int resaleValue;
}

@property (strong) NSString *label;
@property unsigned int resaleValue;

@end
