//
//  main.m
//  Stocks
//
//  Created by Nicholas Squire on 8/24/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

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
        
        NSArray *stocks = [[NSArray alloc] initWithObjects:stock1, stock2, stock3, nil];
        
        for (StockHolding *stock in stocks) {
            NSLog(@"The current value of the stock is: %f", [stock valueInDollars]);
        }
        
    }
    return 0;
}

