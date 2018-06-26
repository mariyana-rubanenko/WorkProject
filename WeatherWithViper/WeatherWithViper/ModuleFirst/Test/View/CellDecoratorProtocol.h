//
//  CellDecoratorProtocol.h
//  WeatherWithViper
//
//  Created by rnov on 20.06.2018.
//  Copyright © 2018 rnov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CityTableViewCell.h"
#import "CityProtocol.h"

@protocol CellDecoratorProtocol <NSObject>

-(void)decorate:(CityTableViewCell *)cell city:(id<CityProtocol>)model;

@end
