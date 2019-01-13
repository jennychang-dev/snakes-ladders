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
        _currentSquare = 0;
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
    _diceNumber = 1 + arc4random_uniform(6);
    _currentSquare += _diceNumber;

    NSNumber *current = @(_currentSquare);
    
    if ([current isEqualToValue:@100]) {
        NSLog(@"game is over");
        [self gameOver];
        
    } else if ([_gameLogic objectForKey:current] != nil) {
        current = [_gameLogic objectForKey:current];
    
        // set current position to value for key
    } else
        current = current; // set equal to its current position

    NSLog(@"you rolled a %ld\n your new position is %@",_diceNumber,current);
    
    return;
}

-(BOOL)gameOver {
    
    return YES;
}

@end
