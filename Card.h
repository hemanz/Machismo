//
//  Card.h
//  Machismo
//
//  Created by 鹤楠 on 15/1/27.
//  Copyright (c) 2015年 hippo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
    
@property (strong ,nonatomic)NSString *contents;

@property (nonatomic,getter=isChosen) BOOL chosen;

@property (nonatomic,getter=isMached) BOOL match;


- (int) match :(NSArray *) otherCards;

@end
