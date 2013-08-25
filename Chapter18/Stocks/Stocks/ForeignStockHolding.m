//
//  ForeignStockHolding.m
//  Stocks
//
//  Created by Nicholas Squire on 8/25/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#import "ForeignStockHolding.h"

@implementation ForeignStockHolding

@synthesize conversionRate;

- (float)costInDollars
{
    float domesticCost = [super costInDollars];
    return domesticCost * conversionRate;
}

- (float)valueInDollars
{
    float domesticValue = [super valueInDollars];
    return domesticValue * conversionRate;
}

@end
