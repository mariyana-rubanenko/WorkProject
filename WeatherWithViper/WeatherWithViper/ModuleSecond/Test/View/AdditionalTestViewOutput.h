//
//  AdditionalTestViewOutput.h
//  WeatherWithViper
//
//  Created by mary on 20/06/2018.
//  Copyright © 2018 sbt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CityProtocol.h"
#import "UIKit/UIKit.h"

@protocol AdditionalTestViewOutput <NSObject, UICollectionViewDelegate, UICollectionViewDataSource>

/**
 @author mary

 Метод сообщает презентеру о том, что view готова к работе
 */
- (void)didTriggerViewReadyEvent;

- (void) updateModel:(id<CityProtocol>)model;
- (id<CityProtocol>) getModel;

-(NSMutableArray *)getWeatherData:(id <CityProtocol>) model;
-(NSMutableArray *)getWeatherMainArray:(id<CityProtocol>) model;
-(void) requestFromServerWeatherData:(id <CityProtocol>)model;

@end
