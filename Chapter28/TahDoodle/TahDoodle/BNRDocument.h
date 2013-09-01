//
//  BNRDocument.h
//  TahDoodle
//
//  Created by Nicholas Squire on 9/1/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BNRDocument : NSDocument
{
    NSMutableArray *todoItems;
    IBOutlet NSTableView *itemTableView;
}

- (IBAction)createNewItem:(id)sender;

@end
