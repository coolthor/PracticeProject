//
//  DetailViewController.m
//  AntiBlackBox
//
//  Created by Thor Lin on 2014/3/23.
//  Copyright (c) 2014年 Thor Lin. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize myWebView = _myWebView;
@synthesize arrayIndex =_arrayIndex;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    myWebView01 = [[UIWebView alloc] initWithFrame:CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:myWebView01];
    
    urlArray = [NSMutableArray arrayWithObjects:@"http://www.ustream.tv/channel/longson3000",@"https://www.youtube.com/watch?v=IpM_mYdp_Xg",@"http://www.ustream.tv/channel/nonukestw",@"http://www.ustream.tv/channel/%E5%8F%8D%E9%BB%91%E7%AE%B1%E6%9C%8D%E8%B2%BF%E4%B9%8B%E5%A4%9C-%E6%BF%9F%E5%8D%97%E8%B7%AF3-21-19-18",@"https://www.youtube.com/watch?v=uTxGjgRu3Xs",@"http://www.appledaily.com.tw/LIVE/other",@"http://www.ustream.tv/channel/%E5%8F%8D%E6%9C%8D%E8%B2%BF%E9%BB%91%E7%AE%B1-%E9%80%B2%E6%94%BB%E8%A1%8C%E6%94%BF%E9%99%A2", nil];
    
    NSURL *url = [NSURL URLWithString:[urlArray objectAtIndex:_arrayIndex]];
    NSURLRequest * request = [[NSURLRequest alloc]initWithURL:url];
    [myWebView01 loadRequest:request];
    myWebView01.scalesPageToFit =YES;
}
-(void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    myWebView01.frame = CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y, self.view.frame.size.width, self.view.frame.size.height);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
