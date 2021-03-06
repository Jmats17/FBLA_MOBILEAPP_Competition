//
//  May.m
//  FBLAEVENT
//
//  Created by Justin Matsnev on 12/1/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "May.h"

@implementation May
{
    CCScene *noevent;
    
    CCNode *may1;
    CCNode *may15;
    CCNode *may23;
    CCNode *noEvent;
    CCButton *goBackAll;
    CCButton *goBackMay;
}

-(void) didLoadFromCCB {
    self.userInteractionEnabled = TRUE;
    goBackMay.visible = false;
}

//portrays event

-(void)may1 {
    NSLog(@"clicked");
    
    may1.visible = true;
    goBackAll.visible = false;
    goBackMay.visible = true;
    
}

//portrays event


-(void)may15 {
    NSLog(@"clicked2");
    may15.visible = true;
    goBackAll.visible = false;
    goBackMay.visible = true;
}

//portrays event


-(void)may23 {
    NSLog(@"clicked2");
    may23.visible = true;
    goBackAll.visible = false;
    goBackMay.visible = true;
}

//portrays event


-(void)a {
    NSLog(@"clicked111");
    
    noEvent.visible = true;
    goBackAll.visible = false;
    goBackMay.visible = true;
}

//goes back to the month calender view

-(void)goBackMay {
    //    NSLog(@"clicked3");
    //    CCScene *June = [CCBReader loadAsScene: @"June"];
    //    CCTransition *transition = [CCTransition transitionCrossFadeWithDuration:.5f];
    //    [[CCDirector sharedDirector] replaceScene:June withTransition:transition];
    may1.visible = false;
    may15.visible = false;
    may23.visible = false;
    noEvent.visible = false;
    if (may1.visible == false || may15.visible == false || may23.visible == false || noEvent.visible == false) {
        goBackAll.visible = true;
        goBackMay.visible = false;
    }
    
}
// goes back to mini calenders


-(void)goBackAll {
    NSLog(@"months clicked");
    CCScene *allmonths = [CCBReader loadAsScene: @"AllMonths"];
    CCTransition *transition = [CCTransition transitionCrossFadeWithDuration:.5f];

    [[CCDirector sharedDirector] replaceScene:allmonths withTransition:transition];
}
@end
