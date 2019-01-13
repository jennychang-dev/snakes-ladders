//
//  main.m
//  Snakes & Ladders
//
//  Created by Jenny Chang on 12/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Welcome to Snakes & Ladders. Please initiate the game by clicking r or roll when you would like to  roll the dice at the end of each round.");
        
        
        Player *jc = [[Player alloc] init]; // YOU HAD TO ALLOC INIT OUTSIDE THE WHILE LOOP OTHERWISE CURRENT SQ WOULD NOT HAVE BEEN INCREMENTED!!
        
        while (YES) {
            
            char inputs[100];
            fgets(inputs, 100, stdin);
            NSString *inputString = [[NSString stringWithCString:inputs encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSSet *successStrings = [NSSet setWithObjects:@"roll",
                                     @"r",
                                     nil];
            
            if ([successStrings containsObject:inputString]) {
            [jc roll];
//            } else {
//                NSLog(@"Game is over");
//            }
//            break;

    }
        }
    return 0;

}
}
