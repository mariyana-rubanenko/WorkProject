//
//  CellDecoratorSecondProtocol.h
//  WeatherWithViper
//
//  Created by rnov on 17.07.2018.
//  Copyright © 2018 rnov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WeatherCollectionViewCell.h"
#import "Weather.h"

@protocol CellDecoratorSecondProtocol <NSObject>

-(void) decorateCellInSecondVC:(WeatherCollectionViewCell *)cell modelOfWeather:(Weather *)weather;

@end
