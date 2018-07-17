//
//  City.m
//  WeatherWithViper
//
//  Created by rnov on 20.06.2018.
//  Copyright © 2018 rnov. All rights reserved.
//

#import "City.h"

@implementation City

@synthesize cityName = _cityName, cityId = _cityId;

-(instancetype)initWithName:(NSString *)name id:(NSInteger) cityId {
    self = [super init];
    if (self) {
        self.cityName = name;
        self.cityId = cityId;
    }
    return self;
}

@end
