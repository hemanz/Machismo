//
//  PlayingCardDeck.m
//  Machismo
//
//  Created by 鹤楠 on 15/1/29.
//  Copyright (c) 2015年 hippo. All rights reserved.
//

#import "PlayingCardDeck.h"

@implementation PlayingCardDeck

- (instancetype)init{
    
    self = [super init];
    
    if (self) {
        for (NSString* suit in [PlayingCard vaildSuit]) {
            for (NSInteger rank = 1; rank<=[PlayingCard maxRank]; rank++) {
                
                PlayingCard* card = [[PlayingCard alloc] init];
                
                card.rank = rank;
                
                card.suit = suit;
                
                [self addCard:card];
                
            }
        }
    }
    return self;
    
}

@end
