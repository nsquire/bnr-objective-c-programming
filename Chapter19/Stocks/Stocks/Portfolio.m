//
//  Portfolio.m
//  Stocks
//
//  Created by Nicholas Squire on 8/27/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#import "Portfolio.h"
#import "StockHolding.h"

@implementation Portfolio

- (void)addStockHolding:(StockHolding *)s
{
    if (!stockHoldings) {
        stockHoldings = [[NSMutableArray alloc] init];
    }
    
    [stockHoldings addObject:s];
}

- (float)valueOfStockHoldings
{
    float sum = 0;
    
    for (StockHolding *s in stockHoldings) {
        sum += [s valueInDollars];
    }
    
    return sum;
}

@end
