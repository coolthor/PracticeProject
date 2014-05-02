//
//  IntroScene.h
//  helloworld
//
//  Created by Thor Lin on 2014/4/9.
//  Copyright Thor Lin 2014年. All rights reserved.
//
// -----------------------------------------------------------------------

// Importing cocos2d.h and cocos2d-ui.h, will import anything you need to start using cocos2d-v3
#import "cocos2d.h"
#import "cocos2d-ui.h"
#import "CCActionInterval.h"

// -----------------------------------------------------------------------

/**
 *  The intro scene
 *  Note, that scenes should now be based on CCScene, and not CCLayer, as previous versions
 *  Main usage for CCLayer now, is to make colored backgrounds (rectangles)
 *
 */
@interface IntroScene : CCScene<CCPhysicsCollisionDelegate>
{
    NSMutableArray * _targets;
    NSMutableArray * _projectiles;
    CCPhysicsNode * _physicsWorld;
    CCSprite * _player;
}
// -----------------------------------------------------------------------

+ (IntroScene *)scene;
- (id)init;

// -----------------------------------------------------------------------
@end