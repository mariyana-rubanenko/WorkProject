//
//  MainTestRouterInput.h
//  WeatherWithViper
//
//  Created by mary on 20/06/2018.
//  Copyright © 2018 sbt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"
#import "CityProtocol.h"

@protocol MainTestRouterInput <NSObject>

@required

- (void)showModuleFirstFromModuleSecond:(UIViewController *) view withModel:(id<CityProtocol>) model;

@end
