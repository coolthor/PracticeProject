//
//  ZipCodeFinderViewController.h
//  ZipCodeFinder
//
//  Created by Thor Lin on 2014/2/24.
//  Copyright (c) 2014年 Thor Lin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ZipCodeFinderViewController : UIViewController <CLLocationManagerDelegate>
{
    IBOutlet UILabel *myCoodinate;
    CLLocationManager * locationManager;
    CLLocation * myCurrentLoction;
    CLGeocoder * myGeocoder;
    IBOutlet UILabel *myZipPostalCode;
    IBOutlet MKMapView *myMap;
}
- (IBAction)preeGetCurrentLocation:(id)sender;
@end
