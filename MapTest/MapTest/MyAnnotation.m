//
//  MyAnnotation.m
//  MapTest
//
//  Created by Thor Lin on 13/7/28.
//  Copyright (c) 2013年 Thor Lin. All rights reserved.
//

#import "MyAnnotation.h"

@implementation MyAnnotation
@synthesize coordinate;
@synthesize title;
@synthesize subtitle;

- (id)initWithCoordinate:(CLLocationCoordinate2D)argCoordinate title:(NSString *)argTitle subtitle:(NSString *)argSubtitle{
    self = [super init];
    if(self){
        coordinate = argCoordinate;
        title = argTitle;
        subtitle = argSubtitle;
    }
    return self;
}

@end
