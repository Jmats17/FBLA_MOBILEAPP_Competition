//
//  September.m
//  FBLAEVENT
//
//  Created by Justin Matsnev on 12/4/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "September.h"

@implementation September
-(void)goBackAll {
    NSLog(@"months clicked");
    CCScene *allmonths = [CCBReader loadAsScene: @"Allmonths"];
    [[CCDirector sharedDirector] replaceScene:allmonths];
}
@end
