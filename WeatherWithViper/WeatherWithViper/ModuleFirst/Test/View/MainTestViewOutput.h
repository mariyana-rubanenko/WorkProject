//
//  MainTestViewOutput.h
//  WeatherWithViper
//
//  Created by mary on 20/06/2018.
//  Copyright © 2018 sbt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"
#import "CityProtocol.h"

@protocol MainTestViewOutput <NSObject, UITableViewDataSource, UITableViewDelegate>

/**
 @author mary

 Метод сообщает презентеру о том, что view готова к работе
 */
//-(void)initDataOfCities;
- (void)didTriggerViewReadyEvent;
- (id<CityProtocol>)getModelWithIndexPath:(NSIndexPath *)indexPath;


@end
