//
//  ViewController.h
//  TweetMapPractice
//
//  Created by Thor Lin on 13/6/17.
//  Copyright (c) 2013年 Thor Lin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapKit/MapKit.h"

@interface ViewController : UIViewController
{
    __weak IBOutlet MKMapView *myMapView;
    CLLocationManager *mylocationManager;
}
@end
