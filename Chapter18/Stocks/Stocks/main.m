//
//  main.m
//  Stocks
//
//  Created by Nicholas Squire on 8/24/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "StockHolding.h"
#import "ForeignStockHolding.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        StockHolding *stock1 = [[StockHolding alloc] init];
        [stock1 setPurchaseSharePrice:1.0];
        [stock1 setCurrentSharePrice:1.2];
        [stock1 setNumberOfShares:30];
        
        StockHolding *stock2 = [[StockHolding alloc] init];
        [stock2 setPurchaseSharePrice:5.5];
        [stock2 setCurrentSharePrice:4.5];
        [stock2 setNumberOfShares:10];
        
        StockHolding *stock3 = [[StockHolding alloc] init];
        [stock3 setPurchaseSharePrice:14.75];
        [stock3 setCurrentSharePrice:16.05];
        [stock3 setNumberOfShares:100];
        
        ForeignStockHolding *stock4 = [[ForeignStockHolding alloc] init];
        [stock4 setPurchaseSharePrice:12.0];
        [stock4 setCurrentSharePrice:13.05];
        [stock4 setNumberOfShares:50];
        [stock4 setConversionRate:0.75];
        
        ForeignStockHolding *stock5 = [[ForeignStockHolding alloc] init];
        [stock5 setPurchaseSharePrice:22.45];
        [stock5 setCurrentSharePrice:16.0];
        [stock5 setNumberOfShares:100];
        [stock5 setConversionRate:1.15];
        
        NSArray *stocks = [[NSArray alloc] initWithObjects:stock1, stock2, stock3, stock4, stock5, nil];
        
        for (StockHolding *stock in stocks) {
            NSLog(@"The current value of the stock is: %f", [stock valueInDollars]);
        }
        
    }
    return 0;
}

