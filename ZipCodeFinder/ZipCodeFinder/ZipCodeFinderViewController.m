//
//  ZipCodeFinderViewController.m
//  ZipCodeFinder
//
//  Created by Thor Lin on 2014/2/24.
//  Copyright (c) 2014年 Thor Lin. All rights reserved.
//

#import "ZipCodeFinderViewController.h"

@interface ZipCodeFinderViewController ()

@end

@implementation ZipCodeFinderViewController

- (void)viewDidLoad
{
    myCurrentLoction = [[CLLocation alloc]init];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    locationManager = [[CLLocationManager alloc]init];
    locationManager.delegate =self;

    myGeocoder = [[CLGeocoder alloc]init];
    
}

-(void) locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations{
    CLLocation * location = [locations lastObject];
    //CLLocation * location = [[CLLocation alloc]initWithLatitude:23.310892 longitude:120.317169];
    myCurrentLoction = location;
    
    myMap.centerCoordinate =location.coordinate;
    MKCoordinateRegion coordnate;
    coordnate.center.latitude = location.coordinate.latitude;
    coordnate.center.longitude = location.coordinate.longitude;
    
    coordnate.span.latitudeDelta = 0.007;
    coordnate.span.longitudeDelta = 0.007;
    
    [myMap setRegion:coordnate animated:YES];
    
    
    myCoodinate.text = [[NSString alloc] initWithFormat:@"經度:%f 緯度:%f",location.coordinate.latitude,location.coordinate.longitude];
    
    [myGeocoder reverseGeocodeLocation:location completionHandler:^(NSArray *array, NSError *error) {
                if (array.count > 0) {
        
                    CLPlacemark *placemark = [array objectAtIndex:0];
                    NSString *country = placemark.ISOcountryCode;
                    NSString *city = placemark.locality;
                    NSString *postalCode = placemark.postalCode;
                    NSString *locality = placemark.locality;
                    NSString *thoroughfare = placemark.thoroughfare;
                    NSString *administrativeArea = placemark.administrativeArea;
                    NSString *subThoroughfare = placemark.subThoroughfare;
                    NSArray *areasOfInterest = placemark.areasOfInterest;
                    NSLog(@"---%@...%@..%@..cout:%d",country,city,postalCode,[array count]);
                    NSLog(@"---地址：%@%@  區：%@ 域：%@",thoroughfare,subThoroughfare,locality,administrativeArea);
                    myZipPostalCode.text = [[NSString alloc] initWithFormat:@"地址：%@%@ 區：%@ 域：%@",thoroughfare,subThoroughfare,locality,administrativeArea];
                    
                    for (int i=0; i<areasOfInterest.count; i++) {
                        NSObject * o = [areasOfInterest objectAtIndex:i];
                        NSLog(@"---%@",o);
                    }
                }
            }];
//    NSLog(@"經度:%f 緯度:%f",location.coordinate.latitude,location.coordinate.longitude);
    [locationManager stopUpdatingLocation];
}

- (IBAction)preeGetCurrentLocation:(id)sender{
    [locationManager startUpdatingLocation];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
