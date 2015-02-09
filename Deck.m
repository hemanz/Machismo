//
//  Deck.m
//  Machismo
//
//  Created by 鹤楠 on 15/1/28.
//  Copyright (c) 2015年 hippo. All rights reserved.
//

#import "Deck.h"
#import "Card.h"

@interface Deck()

@property (strong,nonatomic) NSMutableArray* cards;

@end

@implementation Deck

- (NSMutableArray*) cards{
    
    if (!_cards) {
        _cards = [[NSMutableArray alloc]init];
        
    }
    return _cards;
    
}

- (void)addCard:(Card *)card onTop:(BOOL)onTop{
    
    if (onTop){
        
        [self.cards insertObject:card atIndex:0];
    
    }
    else{
        
        [self.cards addObject:card];
    }
}

- (void)addCard:(Card *)card{
    
    [self addCard:card onTop:NO];
    
}

- (Card*) drawWithRandomCard{
    
    Card* randomCard = nil;
    if([self.cards count]){
        unsigned index = arc4random() % [self.cards count];
        
        randomCard = self.cards[index];
        
        
        [self.cards removeObjectAtIndex:index];
    }
    

    return randomCard;
    
}





@end
