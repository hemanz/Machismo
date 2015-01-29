//
//  Card.m
//  Machismo
//
//  Created by 鹤楠 on 15/1/27.
//  Copyright (c) 2015年 hippo. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int) match:(NSArray *)otherCards{
    
    int score = 0;
    
    for(Card *cards in otherCards){
        
        if ([cards.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    return score;
    
}

@end
