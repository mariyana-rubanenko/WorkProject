//
//  MainTestViewController.h
//  WeatherWithViper
//
//  Created by mary on 20/06/2018.
//  Copyright © 2018 sbt. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MainTestViewInput.h"
#import "CityProtocol.h"
#import "CellDecoratorProtocol.h"

@protocol MainTestViewOutput;

@interface MainTestViewController : UIViewController <MainTestViewInput, UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) id<MainTestViewOutput> output;
@property (nonatomic, weak) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *citiesList;
@property (nonatomic, strong) id<CityProtocol> model;
@property (nonatomic, strong) id<CellDecoratorProtocol> cellDecorator;

@end
