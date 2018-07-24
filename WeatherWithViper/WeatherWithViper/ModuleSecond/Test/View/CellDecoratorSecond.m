//
//  CellDecoratorSecond.m
//  WeatherWithViper
//
//  Created by rnov on 17.07.2018.
//  Copyright © 2018 rnov. All rights reserved.
//

#import "CellDecoratorSecond.h"

@implementation CellDecoratorSecond 

-(void) decorateCellInSecondVC:(WeatherCollectionViewCell *)cell modelOfWeather:(Weather *)weather {
    NSLog(@"%@", @"decorateCellInSecondVCq");
    cell.timeLabel.text = [weather.timeWeather substringFromIndex:11];
    cell.tempLabel.text = [NSString stringWithFormat:@"%.2f", weather.tempWeather];
    cell.pressureLabel.text = [NSString stringWithFormat:@"%.2f", weather.pressureWeather];
    cell.humidityLabel.text = [NSString stringWithFormat:@"%.0f", weather.humidityWeather];
    cell.windSpeedLabel.text = [NSString stringWithFormat:@"%.2f", weather.windSpeedWeather];
    
    if ([weather.nameImageWeather isEqualToString: @"Rain"]) {
        cell.imageView.image = [UIImage imageNamed:@"rain.png"];
    } else if ([weather.nameImageWeather isEqualToString: @"Clouds"]) {
        cell.imageView.image = [UIImage imageNamed:@"cloud.png"];
    } else {
        cell.imageView.image = [UIImage imageNamed:@"sunny.png"];
        }
    
    cell.backgroundColor = [UIColor redColor];
    
}


@end
