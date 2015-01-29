//
//  PlayingCard.m
//  Machismo
//
//  Created by 鹤楠 on 15/1/28.
//  Copyright (c) 2015年 hippo. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (NSString*) contents{
    
    NSArray *rankStrings = [PlayingCard rankString];
    
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
    
}

@synthesize suit = _suit;

+ (NSArray*)vaildSuit{
    
    return @[@"♥",@"♦",@"♠",@"♣"];
}

//不用类方法进行匹配数组的时候 可能不会出现方法提示

- (void)setSuit:(NSString *)suit{
    
    if ([[PlayingCard vaildSuit]  containsObject:suit ] ) {
        _suit = suit;
    }
    
}

- (NSString*)suit{
    return _suit ? _suit : @"?";
}

+ (NSArray*)rankString{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+ (NSUInteger)maxRank{
    return [[PlayingCard rankString] count]-1;
}

- (void)setRank:(NSUInteger)rank{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }

}


@end
