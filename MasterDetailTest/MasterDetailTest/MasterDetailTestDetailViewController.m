//
//  MasterDetailTestDetailViewController.m
//  MasterDetailTest
//
//  Created by Thor Lin on 13/7/26.
//  Copyright (c) 2013年 Thor Lin. All rights reserved.
//

#import "MasterDetailTestDetailViewController.h"

@interface MasterDetailTestDetailViewController ()
- (void)configureView;

@end

@implementation MasterDetailTestDetailViewController

@synthesize poemTextView = _poemTextView;
@synthesize poet = _poet;
#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    switch (_poet) {
        case 0:
            self.navigationItem.title =@"無題";
            self.poemTextView.text =@"明月出天山。\n"
            "蒼茫云海間。\n"
            "長風幾萬里。\n"
            "吹度玉門關。\n"
            "漢下白登道。\n"
            "胡窺青海灣。\n"
            "由來征戰地。\n"
            "不見有人還。\n"
            "戍客望邊邑。\n"
            "思歸多苦顏。\n"
            "高樓當此夜。\n"
            "嘆息未應閑。";
            break;
        case 1:
            self.navigationItem.title =@"無題";
            self.poemTextView.text =@"國破山河在，\n"
            "城春草木深。\n"
            "感時花濺淚，\n"
            "恨別鳥驚心。\n"
            "烽火連三月，\n"
            "家書抵萬金。\n"
            "白頭搔更短，\n"
            "渾欲不勝簪。";
            break;
        case 2:
            self.navigationItem.title =@"錦瑟";
            self.poemTextView.text = @"錦瑟無端五十弦，\n"
            "一弦一柱思華年。\n"
            "莊生曉夢迷蝴蝶，\n"
            "望帝春心托杜鵑。\n"
            "滄海月明珠有淚，\n"
            "藍田日暖玉生煙。\n"
            "此情可待成追憶，\n"
            "只是當時已惘然。";
        default:
            break;
    }
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
