//
//  MainTestInteractor.h
//  WeatherWithViper
//
//  Created by mary on 20/06/2018.
//  Copyright © 2018 sbt. All rights reserved.
//

#import "MainTestInteractorInput.h"
#import "UIKit/UIKit.h"
#import "City.h"
#import "CityProtocol.h"

@protocol MainTestInteractorOutput;
@protocol ManagerProtocol;

@interface MainTestInteractor : NSObject <MainTestInteractorInput, UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) id<MainTestInteractorOutput> output;
@property (nonatomic, strong) NSMutableArray * citiesList;
@property (nonatomic, strong) id<ManagerProtocol> manager;

@end
