//
//  CityProtocol.h
//  WeatherWithViper
//
//  Created by rnov on 20.06.2018.
//  Copyright © 2018 rnov. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CityProtocol <NSObject>

@property (nonatomic, copy) NSString *cityName;
@property (nonatomic, assign) NSInteger cityId;

@end
