//
//  CellDecorator.m
//  WeatherWithViper
//
//  Created by rnov on 20.06.2018.
//  Copyright © 2018 rnov. All rights reserved.
//

#import "CellDecorator.h"
#import "CityProtocol.h"
#import "CityTableViewCell.h"

@implementation CellDecorator

- (void)decorate:(CityTableViewCell *)cell city:(id<CityProtocol>)model {
    cell.nameLabel.text = model.cityName;
    //NSLog(@"%@", cell);
}

@end
