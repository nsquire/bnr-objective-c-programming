//
//  BNRDocument.m
//  TahDoodle
//
//  Created by Nicholas Squire on 9/1/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#import "BNRDocument.h"

@implementation BNRDocument

- (id)init
{
    self = [super init];
    if (self) {
        // Add your subclass-specific initialization here.
    }
    return self;
}

#pragma mark - NSDocument Overrides

- (NSString *)windowNibName
{
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"BNRDocument";
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
    [super windowControllerDidLoadNib:aController];
    // Add any code here that needs to be executed once the windowController has loaded the document's window.
}

+ (BOOL)autosavesInPlace
{
    return YES;
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError
{
    // Insert code here to write your document to data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning nil.
    // You can also choose to override -fileWrapperOfType:error:, -writeToURL:ofType:error:, or -writeToURL:ofType:forSaveOperation:originalContentsURL:error: instead.
    
//    NSException *exception = [NSException exceptionWithName:@"UnimplementedMethod" reason:[NSString stringWithFormat:@"%@ is unimplemented", NSStringFromSelector(_cmd)] userInfo:nil];
//    @throw exception;
//    return nil;
    
    // This method is called when our document is being saved
    // We are expected to hand the caller an NSData object wrapping our data
    // so that it can be written to disk
    
    // If there's no array, we'll write out an empty array for now
    if (!todoItems) {
        todoItems = [NSMutableArray array];
    }
    
    // Pack our todoItems array into an NSData object
    NSData *data = [NSPropertyListSerialization dataWithPropertyList:todoItems
                                                              format:NSPropertyListXMLFormat_v1_0
                                                             options:0
                                                               error:outError];
    if (!data) {
        if (outError != NULL) {
            NSString *locFailure = [*outError localizedFailureReason];
            
            if (locFailure) {
                NSMutableDictionary *newUserInfo = [NSMutableDictionary dictionaryWithCapacity:[[[*outError userInfo] allKeys] count]];
                [newUserInfo setDictionary:[*outError userInfo]];
                NSString *description = [NSString stringWithFormat:NSLocalizedString(@"Custom error save failed... Reason: %@", @""), locFailure];
                [newUserInfo setObject:description forKey:NSLocalizedDescriptionKey];
                
                NSError *newError = [NSError errorWithDomain:[*outError domain] code:[*outError code] userInfo:newUserInfo];
                NSLog(@"New error: %@", newError);
                *outError = newError;
            }
        }
        
        return nil;
    }
    
    // return our newly-packed NSData object
    return data;
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError
{
    // Insert code here to read your document from the given data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning NO.
    // You can also choose to override -readFromFileWrapper:ofType:error: or -readFromURL:ofType:error: instead.
    // If you override either of these, you should also override -isEntireFileLoaded to return NO if the contents are lazily loaded.
    
//    NSException *exception = [NSException exceptionWithName:@"UnimplementedMethod" reason:[NSString stringWithFormat:@"%@ is unimplemented", NSStringFromSelector(_cmd)] userInfo:nil];
//    @throw exception;
//    return YES;
    
    // This method is called when a document is being loaded
    // We are handed an NSData object and expected to pull our data out of it
    
    // Extract our todoItems
    todoItems = [NSPropertyListSerialization propertyListWithData:data
                                                          options:NSPropertyListMutableContainers
                                                           format:NULL
                                                            error:outError];
    
    if (!todoItems) {
        if (outError != NULL) {
            NSString *locFailure = [*outError localizedFailureReason];
            
            if (locFailure) {
                NSMutableDictionary *newUserInfo = [NSMutableDictionary dictionaryWithCapacity:[[[*outError userInfo] allKeys] count]];
                [newUserInfo setDictionary:[*outError userInfo]];
                NSString *description = [NSString stringWithFormat:NSLocalizedString(@"Custom error read failed... Reason: %@", @""), locFailure];
                [newUserInfo setObject:description forKey:NSLocalizedDescriptionKey];
                
                NSError *newError = [NSError errorWithDomain:[*outError domain] code:[*outError code] userInfo:newUserInfo];
                NSLog(@"New error: %@", newError);
                *outError = newError;
            }
        }
        
        return NO;
    }

    return YES;
}

#pragma mark - Actions

- (IBAction)createNewItem:(id)sender
{
    // If there's no array yet, go ahead and create one to store our new task
    if (!todoItems) {
        todoItems = [NSMutableArray array];
    }
    
    [todoItems addObject:@"New item"];
    
    // -reloadData tells the table view to refresh and ask its datasource
    // (which happens to be this BNRDocument object in this case)
    // for new data to display
    [itemTableView reloadData];
    
    // -updateChangeCount: tells the application whether or not the document
    // has unsaved changes. NSChangeDone flags the document as unsaved.
    [self updateChangeCount:NSChangeDone];
}

- (IBAction)deleteExistingItem:(id)sender
{
    long selectedIndex = [itemTableView selectedRow];
    
    if (selectedIndex == -1) {
        return;
    }
    
    [todoItems removeObjectAtIndex:selectedIndex];
    [itemTableView reloadData];
    [self updateChangeCount:NSChangeDone];
}

#pragma mark - Data Source Methods

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tv
{
    // This table view is meant to display the todoItems,
    // so the number of entries in the tavle view will be the same
    // as the number of objects in the array.
    return [todoItems count];
}

- (id)tableView:(NSTableView *)tableView
        objectValueForTableColumn:(NSTableColumn *)tableColumn
                              row:(NSInteger)row
{
    // Return the item from todoItems that correspond to the cell
    // that the table view wants to display
    return [todoItems objectAtIndex:row];
}

- (void)tableView:(NSTableView *)tableView
                    setObjectValue:(id)object
                    forTableColumn:(NSTableColumn *)tableColumn
                               row:(NSInteger)row
{
    // When the user changes a to-do item on the table view,
    // update the todoItems array
    [todoItems replaceObjectAtIndex:row
                         withObject:object];
    // And then flag the document as having unsaved changes.
    [self updateChangeCount:NSChangeDone];
}

@end
