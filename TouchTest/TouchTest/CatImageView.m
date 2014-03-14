//
//  CatImageView.m
//  TouchTest
//
//  Created by Thor Lin on 13/7/27.
//  Copyright (c) 2013年 Thor Lin. All rights reserved.
//

#import "CatImageView.h"

@implementation CatImageView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithImage:(UIImage *)image{
    self = [super initWithImage:image];
    if (self){
        self.userInteractionEnabled = YES;
    }
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
