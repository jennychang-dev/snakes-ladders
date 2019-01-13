//
//  Player.h
//  Snakes & Ladders
//
//  Created by Jenny Chang on 12/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Player : NSObject

@property (nonatomic, assign) NSInteger currentSquare;
@property (nonatomic, assign) NSInteger diceNumber;
@property (nonatomic, strong) NSDictionary <NSNumber *, NSNumber *> *gameLogic;

@property (nonatomic) BOOL gameOver;
-(void)roll;

@end

NS_ASSUME_NONNULL_END
