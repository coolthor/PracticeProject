//
//  MapTestViewController.m
//  MapTest
//
//  Created by Thor Lin on 13/7/28.
//  Copyright (c) 2013年 Thor Lin. All rights reserved.
//

#import "MapTestViewController.h"
#import "MyAnnotation.h"
@interface MapTestViewController ()

@end

@implementation MapTestViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//    geocoder = [[CLGeocoder alloc]init];
//    
//    coordinate101.latitude = 25.033408;
//    coordinate101.longitude =121.564099;
//    MyAnnotation *annotation = [[MyAnnotation alloc]initWithCoordinate:coordinate101 title:@"Taipei 101" subtitle:@"The Highest building in Taiwan"];
//    [self.myMapView addAnnotation:annotation];
    
    loctionManagement =[[CLLocationManager alloc]init];
    loctionManagement.desiredAccuracy =kCLLocationAccuracyBest;
    loctionManagement.delegate =self;
    [loctionManagement startUpdatingLocation]; }
-(void) locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation{
    NSLog(@"update 經度： %f 緯度： %f",newLocation.coordinate.latitude,newLocation.coordinate.longitude);
}

-(void) locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation{
//    NSLog(@"update latitude: %f  Longitude: %f",userLocation.location.coordinate.latitude ,userLocation.location.coordinate.longitude);
//    MKCoordinateRegion region;
//    region.center = coordinate101;
//    MKCoordinateSpan mapSpan;
//    mapSpan.latitudeDelta = ABS(coordinate101.latitude - userLocation.coordinate.latitude);
//    mapSpan.longitudeDelta = ABS(coordinate101.longitude - userLocation.coordinate.longitude);
//    region.span = mapSpan;
//    mapView.region = region;
//    
//    [geocoder reverseGeocodeLocation:userLocation.location completionHandler:^(NSArray *placemarks,NSError *error){
//        if (error == nil && [placemarks count]>0) {
//            CLPlacemark * placeMark = [placemarks objectAtIndex:0];
//            NSLog(@"%@",placeMark.addressDictionary);
//            NSArray * addressArray = [placeMark.addressDictionary objectForKey:@"FormattedAddressLines"];
//            
//            userLocation.title =[addressArray objectAtIndex:0];
//            userLocation.subtitle  = @"測試位置";
//        }
//    }];
//}
@end
