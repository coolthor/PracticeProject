//
//  ViewController.m
//  TweetMapPractice
//
//  Created by Thor Lin on 13/6/17.
//  Copyright (c) 2013年 Thor Lin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    mylocationManager = [[CLLocationManager alloc]init];
    mylocationManager.delegate = self;
    mylocationManager.desiredAccuracy =kCLLocationAccuracyKilometer;
    mylocationManager.distanceFilter =1000;
    [mylocationManager startUpdatingLocation];
    
    [myMapView setShowsUserLocation:YES];
}

-(void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
    MKCoordinateRegion myRegion = MKCoordinateRegionMakeWithDistance(newLocation.coordinate, 10000, 10000);
    [myMapView setRegion:myRegion animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
