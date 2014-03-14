//
//  qwer01ViewController.m
//  qwer01
//
//  Created by Thor Lin on 2014/2/10.
//  Copyright (c) 2014年 Thor Lin. All rights reserved.
//

#import "qwer01ViewController.h"

@interface qwer01ViewController ()

@end

@implementation qwer01ViewController
{
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    textField.returnKeyType = UIReturnKeyDone;
    textField.keyboardType =UIKeyboardTypeEmailAddress;
    [textField addTarget:self action:@selector(exitInput:) forControlEvents:UIControlEventEditingDidEndOnExit];
    [textField becomeFirstResponder];
    
    myScrollView.maximumZoomScale = 2.0;
    myScrollView.minimumZoomScale = 1.0;
    
    myScrollView.delegate =self;
    
    UIImageView * imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ooo.jpg"]];
    [myScrollView addSubview:imageView];
    //[self takePhoto];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch * t = [touches anyObject];
    startPos = [t locationInView:self.view];
    ts = event.timestamp;
    myLabel.text = [NSString stringWithFormat:@"touch (%d), tap (%d),pos:%@",[touches count],t.tapCount,NSStringFromCGPoint(startPos)];
    
}


-(void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch * t = [touches anyObject];
    myLabel.text = [NSString stringWithFormat:@"touch (%d), tap (%d),pos:%@",[touches count],t.tapCount,NSStringFromCGPoint([t locationInView:self.view])];
}


- (IBAction)exitInput:(id)sender{
    [sender resignFirstResponder];
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return [scrollView.subviews objectAtIndex:0];
}

- (void) takePhoto
{
    //UIImagePickerControllerSourceType sourceType = UIImagePickerControllerSourceTypeCamera;

    UIImagePickerController *picker = [[UIImagePickerController alloc]init];

    picker.delegate =self;
    picker.allowsEditing = YES; //設置可編輯

    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]){
        picker.sourceType = UIImagePickerControllerSourceTypeCamera;
        [self presentViewController:picker animated:NO completion:nil];
    }
    
}

- (IBAction)pushButton:(id)sender {
    [self takePhoto];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
