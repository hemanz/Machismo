//
//  PlayingCard.h
//  Machismo
//
//  Created by 鹤楠 on 15/1/28.
//  Copyright (c) 2015年 hippo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (nonatomic,strong)NSString* suit;

@property (nonatomic)NSUInteger rank;

+ (NSArray*)vaildSuit;

+ (NSUInteger)maxRank;



@end
