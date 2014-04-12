//
//  IntroScene.m
//  helloworld
//
//  Created by Thor Lin on 2014/4/9.
//  Copyright Thor Lin 2014年. All rights reserved.
//
// -----------------------------------------------------------------------

// Import the interfaces
#import "IntroScene.h"
#import "HelloWorldScene.h"

// -----------------------------------------------------------------------
#pragma mark - IntroScene
// -----------------------------------------------------------------------

@implementation IntroScene

// -----------------------------------------------------------------------
#pragma mark - Create & Destroy
// -----------------------------------------------------------------------

+ (IntroScene *)scene
{
	return [[self alloc] init];
}

// -----------------------------------------------------------------------

- (id)init
{
    // Apple recommend assigning self with supers return value
    self = [super init];
    if (!self) return(nil);
    
    _targets = [[NSMutableArray alloc]init];
    _projectiles =[[NSMutableArray alloc]init];
    
    CGSize winSize = [[CCDirector sharedDirector] viewSize];
    
    // Create a colored background (Dark Grey)
    CCNodeColor *background = [CCNodeColor nodeWithColor:[CCColor colorWithRed:255.0f green:1.2f blue:0.2f alpha:1.0f]];
    [self addChild:background];

    
    CCSprite * player =  [ CCSprite spriteWithImageNamed:@ "Player.png"];
    player.position = ccp(player.contentSize.width/2, winSize.height/2);
    [self addChild : player ] ;
    
    // done
    [self addTarget];
    
    //[self schedule:@selector(update:) interval:1.0];
    [self schedule:@selector(gameLogic:) interval:1.0];
    self.userInteractionEnabled = YES;
    [[OALSimpleAudio sharedInstance] playBg:@"bgm.mp3" loop:YES];
    
	return self;
}

- ( void ) addTarget {
    
    CCSprite * target =  [ CCSprite spriteWithImageNamed:@ "Target.png"];

    [_targets addObject:target];
    
    // Determine where to spawn the target along the Y axis
    CGSize winSize =  [[CCDirector sharedDirector] viewSize];
    int minY = target.contentSize.height / 2 ;
    int maxY = winSize.height - target.contentSize.height / 2 ;
    int rangeY = maxY - minY;
    int actualY =  ( arc4random ( )  % rangeY )  + minY;
    
    // Create the target slightly off-screen along the right edge,
    // and along a random position along the Y axis as calculated above
    target.position = ccp ( winSize.width +  ( target.contentSize.width / 2 ) , actualY ) ;
    [ self addChild : target ] ;
    
    // Determine speed of the target
    int minDuration =  2.0 ;
    int maxDuration =  4.0 ;
    int rangeDuration = maxDuration - minDuration;
    int actualDuration =  ( arc4random ( )  % rangeDuration )  + minDuration;
    
    // Create the actions
    CCActionMoveTo * actionMove =  [[CCActionMoveTo alloc]initWithDuration:actualDuration position:ccp(-target.contentSize.width/2, actualY)];
    CCActionCallBlock * actionCallBack = [[CCActionCallBlock alloc] initWithBlock:^{
        [ self removeChild : target cleanup : YES ] ;
        [_targets removeObject:target];
    }];
    CCActionSequence *action = [CCActionSequence actions:actionMove,actionCallBack, nil];
    [target runAction:action];
    
    
}

-(void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event{
    // Choose one of the touches to work with
    //UITouch * touch =  //[touch anyObject ] ;
    CGPoint location =  [ touch locationInView : [ touch view ] ] ;
    location =  [ [ CCDirector sharedDirector ] convertToGL : location ] ;
    
    // Set up initial location of projectile
    CGSize winSize =  [[CCDirector sharedDirector] viewSize];
    CCSprite * projectile =  [ CCSprite spriteWithImageNamed:@ "Projectile.png"];
    projectile.position = ccp ( 20 , winSize.height/2 ) ;

    [_projectiles addObject:projectile];
    
    // Determine offset of location to projectile
    int offX = location.x - projectile.position.x;
    int offY = location.y - projectile.position.y;
    
    // Bail out if we are shooting down or backwards
    if  ( offX <=  0 )  return ;
    
    // Ok to add now - we've double checked position
    [ self addChild : projectile ] ;
    
    // Determine where we wish to shoot the projectile to
    int realX = winSize.width +  ( projectile.contentSize.width / 2 ) ;
    float ratio =  ( float ) offY /  ( float ) offX;
    int realY =  ( realX * ratio )  + projectile.position.y;
    CGPoint realDest = ccp ( realX, realY ) ;
    
    // Determine the length of how far we're shooting
    int offRealX = realX - projectile.position.x;
    int offRealY = realY - projectile.position.y;
    float length = sqrtf ( ( offRealX * offRealX ) + ( offRealY * offRealY ) ) ;
    float velocity =  480 / 1 ; // 480pixels/1sec
    float realMoveDuration = length / velocity;
    
    // Move projectile to actual endpoint
    
    CCActionMoveTo * actionMove =  [[CCActionMoveTo alloc]initWithDuration:realMoveDuration position:realDest];
    CCActionCallBlock * actionCallBack = [[CCActionCallBlock alloc] initWithBlock:^{
        [ self removeChild : projectile cleanup : YES ] ;
        [_projectiles removeObject:projectile];
    }];
    CCActionSequence *action = [CCActionSequence actions:actionMove,actionCallBack, nil];
    [projectile runAction:action];
    [[OALSimpleAudio sharedInstance] playEffect:@"se.mp3"];//playBg:@"se.mp3"];
}

-(void)update:(CCTime)delta{
    
    NSMutableArray  * projectilesToDelete =  [ [ NSMutableArray alloc ] init ] ;
    for  ( CCSprite * projectile in _projectiles )  {
        CGRect projectileRect = CGRectMake (
                                            projectile.position.x -  ( projectile.contentSize.width / 2 ) ,
                                            projectile.position.y -  ( projectile.contentSize.height / 2 ) ,
                                            projectile.contentSize.width,
                                            projectile.contentSize.height ) ;
        
        NSMutableArray  * targetsToDelete =  [ [ NSMutableArray alloc ] init ] ;
        for  ( CCSprite * target in _targets )  {
            CGRect targetRect = CGRectMake (
                                            target.position.x -  ( target.contentSize.width / 2 ) ,
                                            target.position.y -  ( target.contentSize.height / 2 ) ,
                                            target.contentSize.width,
                                            target.contentSize.height ) ;
            
            if  ( CGRectIntersectsRect ( projectileRect, targetRect ) )  {
                [ targetsToDelete addObject : target ] ;
            }
        }
        
        for  ( CCSprite * target in targetsToDelete )  {
            [ _targets removeObject : target ] ;
            [ self removeChild : target cleanup : YES ] ;
        }
        
        if  ( targetsToDelete.count > 0 )  { 
            [ projectilesToDelete addObject : projectile ] ;
        } 
        //[ targetsToDelete release ] ;
    }
    
    for  ( CCSprite * projectile in projectilesToDelete )  { 
        [ _projectiles removeObject : projectile ] ;
        [ self removeChild : projectile cleanup : YES ] ;
    } 
    //[ projectilesToDelete release ] ;
}

-(void)gameLogic:(CCTime)dt{
    [self addTarget];
}

// -----------------------------------------------------------------------
#pragma mark - Button Callbacks
// -----------------------------------------------------------------------

- (void)onSpinningClicked:(id)sender
{
    // start spinning scene with transition
    [[CCDirector sharedDirector] replaceScene:[HelloWorldScene scene]
                               withTransition:[CCTransition transitionPushWithDirection:CCTransitionDirectionLeft duration:1.0f]];
}

// -----------------------------------------------------------------------
@end
