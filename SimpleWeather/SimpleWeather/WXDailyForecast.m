//
//  WXDailyForecast.m
//  SimpleWeather
//
//  Created by Thor Lin on 2014/3/9.
//  Copyright (c) 2014年 Thor Lin. All rights reserved.
//

#import "WXDailyForecast.h"

@implementation WXDailyForecast
+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    // 1
    NSMutableDictionary *paths = [[super JSONKeyPathsByPropertyKey] mutableCopy];
    // 2
    paths[@"tempHigh"] = @"temp.max";
    paths[@"tempLow"] = @"temp.min";
    // 3
    return paths;
}

@end
