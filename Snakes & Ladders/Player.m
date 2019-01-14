//
//  Player.m
//  Snakes & Ladders
//
//  Created by Jenny Chang on 12/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import "Player.h"

@implementation Player

-(instancetype)init {
    self = [super init];
    if (self) {
        // this overrides the player's init method
        _currentSquare = 0; // only use _ within init
        _gameOver = NO;
        _gameLogic = @{
                                    // ladders
                                    @4:@14,
                                    @8:@31,
                                    @20:@38,
                                    @28:@84,
                                    @40:@59,
                                    @51:@67,
                                    @63:@81,
                                    
                                    // snakes
                                    @17:@8,
                                    @64:@60,
                                    @89:@26,
                                    @95:@75,
                                    @99:@78,
                                    };
        }
    return self;
}

-(void)roll {
    self.diceNumber = 1 + arc4random_uniform(6);
    self.currentSquare += self.diceNumber;

    NSNumber *current = @(self.currentSquare);
    
    NSNumber *newSq = [[NSNumber alloc] init];
    
    NSLog(@"you rolled a %ld",self.diceNumber);

    
    if ([self.gameLogic objectForKey:current] != nil) {
        // set current space to equal new space
        newSq = [self.gameLogic objectForKey:current];
        self.currentSquare = [newSq intValue];
        
        if (newSq > current) {
            if ([newSq intValue] >= 100) {
                [self gameOver];
            } else {
                NSLog(@"Congrats you landed on a ladder. Your new square is %@",newSq); }
        } else {
            NSLog(@"Oops ya landed on a snake. Down ya go to %@",newSq);
        }
        
        
    } else {
        // set old space to still equal current space
        if ([newSq intValue] >= 100) {
            [self gameOver];
        } else {
            
        newSq = current;
        NSLog(@"You landed on square %ld",self.currentSquare);
        }
    }
    
    
    return;
}




-(BOOL)gameOver {
    NSLog(@"game over mate!!");
    return YES;
}

@end
