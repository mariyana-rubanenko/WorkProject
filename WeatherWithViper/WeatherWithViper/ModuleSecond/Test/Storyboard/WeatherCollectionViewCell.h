//
//  WeatherCollectionViewCell.h
//  WeatherWithViper
//
//  Created by rnov on 23.06.2018.
//  Copyright © 2018 rnov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WeatherCollectionViewCell : UICollectionViewCell

@property (nonatomic, weak) IBOutlet UILabel *timeLabel;
@property (nonatomic, weak) IBOutlet UILabel *tempLabel;
@property (nonatomic, weak) IBOutlet UILabel *pressureLabel;
@property (nonatomic, weak) IBOutlet UILabel *humidityLabel;
@property (nonatomic, weak) IBOutlet UILabel *windSpeedLabel;
@property (nonatomic, weak) IBOutlet UIImageView *imageView;

@end
