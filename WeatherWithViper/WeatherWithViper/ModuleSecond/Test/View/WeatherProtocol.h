//
//  WeatherProtocol.h
//  WeatherWithViper
//
//  Created by rnov on 25.06.2018.
//  Copyright © 2018 rnov. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol WeatherProtocol <NSObject>

@required
@property (nonatomic) double tempWeather;
@property (nonatomic) double pressureWeather;
@property (nonatomic) double humidityWeather;
@property (nonatomic) double windSpeedWeather;
@property (nonatomic, strong) NSString *timeWeather;
@property (nonatomic, strong) NSString *nameImageWeather;

@end
