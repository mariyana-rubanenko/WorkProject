//
//  ModelProtocol.h
//  WeatherWithViper
//
//  Created by rnov on 23.06.2018.
//  Copyright © 2018 rnov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CityProtocol.h"

@protocol ModelProtocol <NSObject>

- (void) updateModel:(id<CityProtocol>) model;
- (id<CityProtocol>)getModel;

@end
