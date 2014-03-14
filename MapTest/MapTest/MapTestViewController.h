//
//  MapTestViewController.h
//  MapTest
//
//  Created by Thor Lin on 13/7/28.
//  Copyright (c) 2013年 Thor Lin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
@interface MapTestViewController : UIViewController<MKMapViewDelegate, CLLocationManagerDelegate>{
    CLGeocoder * geocoder;
    CLLocationCoordinate2D coordinate101;
    CLLocationManager *loctionManagement;
}
@property (weak, nonatomic) IBOutlet MKMapView *myMapView;

@end
