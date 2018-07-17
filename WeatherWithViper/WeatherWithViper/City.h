//
//  City.h
//  WeatherWithViper
//
//  Created by rnov on 20.06.2018.
//  Copyright © 2018 rnov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CityProtocol.h"

@interface City : NSObject<CityProtocol>

-(instancetype)initWithName:(NSString *)name id:(NSInteger) cityId;

@end
