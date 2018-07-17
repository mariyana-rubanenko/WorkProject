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
@property (nonatomic, strong) NSNumber *tempWeather;
@property (nonatomic, strong) NSNumber *pressureWeather;
@property (nonatomic, strong) NSNumber *humidityWeather;
@property (nonatomic, strong) NSNumber *windSpeedWeather;
@property (nonatomic, strong) NSString *timeWeather;
@property (nonatomic, strong) NSString *nameImageWeather;

@end
