//
//  ViewController.m
//  Machismo
//
//  Created by 鹤楠 on 14/11/29.
//  Copyright (c) 2014年 hippo. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"
#import "Deck.h"
#import "Card.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *filpCountLabel;
@property (strong) Deck* deck;
@property (nonatomic) int filpCount;

@end

@implementation ViewController

- (void)setFilpCount:(int)filpCount{
    _filpCount = filpCount;
    self.filpCountLabel.text = [NSString stringWithFormat:@"filp:%d",self.filpCount];
    
}

- (Deck*)deck{
    if (!_deck) _deck = [self creatDeck];
    return _deck;
        
}

- (Deck *)creatDeck{
    
    PlayingCardDeck *deck = [[PlayingCardDeck alloc] init];
    
    return deck;
}

- (IBAction)touchCard:(UIButton *)sender {
    
    
    if ([sender.currentTitle length]) {
        NSLog(@"---%@",sender.currentTitle);
        UIImage* cardImage = [UIImage imageNamed:@"cardBack"];
        
        [sender setBackgroundImage:cardImage forState:UIControlStateNormal];

        
        [sender setTitle:@"" forState:UIControlStateNormal];
        
    }
    else{
        NSLog(@"---%@",sender.currentTitle);
        
        UIImage* cardImage = [UIImage imageNamed:@"cardFront"];
        
        Card *card = [self.deck drawWithRandomCard];
        
        
        
        [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
        
        [sender setTitle:card.contents forState:UIControlStateNormal];
        
    }
    
    self.filpCount++;
    
    
}

@end
