//
//  CatPhotoViewController.h
//  MutiView
//
//  Created by Thor Lin on 13/7/22.
//  Copyright (c) 2013年 Thor Lin. All rights reserved.
//

#import <UIKit/UIKit.h>

#define FLYKICK_PINPIN 0
#define SLEEP_PINPIN 1
#define HIME 2


@interface CatPhotoViewController : UIViewController
{
    int catType;
}
-(id)init:(int)type;
@end
