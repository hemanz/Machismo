//
//  Deck.h
//  Machismo
//
//  Created by 鹤楠 on 15/1/28.
//  Copyright (c) 2015年 hippo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void) addCard:(Card *)card onTop:(BOOL)onTop;

- (void) addCard:(Card *)card;

- (Card *) drawWithRandomCard;





@end
