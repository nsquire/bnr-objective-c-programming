//
//  Portfolio.h
//  Stocks
//
//  Created by Nicholas Squire on 8/27/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#import <Foundation/Foundation.h>

@class StockHolding;

@interface Portfolio : NSObject
{
    NSMutableArray *stockHoldings;
}

- (void)addStockHolding:(StockHolding *)s;
- (float)valueOfStockHoldings;

@end
