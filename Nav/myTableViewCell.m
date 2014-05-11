//
//  myTableViewCell.m
//  Nav
//
//  Created by Thor Lin on 2014/5/11.
//  Copyright (c) 2014年 Thor Lin. All rights reserved.
//

#import "myTableViewCell.h"

@implementation myTableViewCell
@synthesize myClass;
@synthesize myName;
@synthesize myImage;
- (void)awakeFromNib
{
    // Initialization code

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
    myName.text = @"提摩";
    myClass.text = @"我要殺死你！";
    UIImage *img = [UIImage imageNamed:@"headSample.jpg"];
    [myImage setImage:img];
}

@end
