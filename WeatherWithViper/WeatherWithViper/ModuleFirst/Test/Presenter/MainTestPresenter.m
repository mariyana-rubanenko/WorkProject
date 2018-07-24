//
//  MainTestPresenter.m
//  WeatherWithViper
//
//  Created by mary on 20/06/2018.
//  Copyright © 2018 sbt. All rights reserved.
//

#import "MainTestPresenter.h"

#import "MainTestViewInput.h"
#import "MainTestInteractorInput.h"
#import "MainTestRouterInput.h"
#import "CityProtocol.h"

@interface MainTestPresenter() <UITableViewDataSource, UITableViewDelegate>
@end

@implementation MainTestPresenter


#pragma mark - Методы MainTestModuleInput

- (void)configureModule {
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

#pragma mark - Методы MainTestViewOutput

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.interactor tableView:tableView numberOfRowsInSection:section];
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.interactor numberOfSectionsInTableView:tableView];
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    return [self.interactor tableView:tableView cellForRowAtIndexPath:indexPath];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSMutableArray *newArrayOfCities = [self.interactor getCities];
    id<CityProtocol> model = newArrayOfCities[indexPath.row];
    [self.router showModuleFirstFromModuleSecond:(UIViewController*)self.view withModel:model];
    
}

- (id<CityProtocol>)getModelWithIndexPath:(NSIndexPath *)indexPath {
    return [self.interactor getCities][indexPath.row];
}

#pragma mark - Методы MainTestInteractorOutput

@end
