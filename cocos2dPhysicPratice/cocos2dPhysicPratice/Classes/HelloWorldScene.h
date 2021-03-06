//
//  HelloWorldScene.h
//  cocos2dPhysicPratice
//
//  Created by Thor Lin on 2014/4/13.
//  Copyright Thor Lin 2014年. All rights reserved.
//
// -----------------------------------------------------------------------

// Importing cocos2d.h and cocos2d-ui.h, will import anything you need to start using Cocos2D v3
#import "cocos2d.h"
#import "cocos2d-ui.h"

// -----------------------------------------------------------------------

/**
 *  The main scene
 */
@interface HelloWorldScene : CCScene<CCPhysicsCollisionDelegate>
{
    CCPhysicsNode * _physicsWorld;
    CCPhysicsBody * _physicsPlayer;
    CCSprite * _player;
    CCLabelTTF *label;
}
// -----------------------------------------------------------------------

+ (HelloWorldScene *)scene;
- (id)init;

// -----------------------------------------------------------------------
@end