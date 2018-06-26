//
//  ManagerProtocol.h
//  WeatherWithViper
//
//  Created by rnov on 23.06.2018.
//  Copyright © 2018 rnov. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ManagerProtocol <NSObject>

@required
@property (nonatomic, strong) NSMutableArray *citiesList;

@end
