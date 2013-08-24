//
//  StockHolding.m
//  Stocks
//
//  Created by Nicholas Squire on 8/24/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

// Accessor methods
- (float)purchaseSharePrice
{
    return purchaseSharePrice;
}

- (void)setPurchaseSharePrice:(float)p
{
    purchaseSharePrice = p;
}
- (float)currentSharePrice
{
    return currentSharePrice;
}

- (void)setCurrentSharePrice:(float)p
{
    currentSharePrice = p;
}

- (int)numberOfShares
{
    return  numberOfShares;
}

- (void)setNumberOfShares:(int)n
{
    numberOfShares = n;
}

// Instance Methods
- (float)costInDollars
{
    return [self purchaseSharePrice] * [self numberOfShares];
}

- (float)valueInDollars
{
    return [self currentSharePrice] * [self numberOfShares];
}

@end
