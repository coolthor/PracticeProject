//
//  MyAnnotation.h
//  MapTest
//
//  Created by Thor Lin on 13/7/28.
//  Copyright (c) 2013年 Thor Lin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MyAnnotation : NSObject <MKAnnotation>
-(id) initWithCoordinate:(CLLocationCoordinate2D)argCoordinate title:(NSString *)argTitle subtitle:(NSString *)argSubtitle;
@end
