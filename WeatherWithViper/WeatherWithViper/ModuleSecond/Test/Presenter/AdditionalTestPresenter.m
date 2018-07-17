//
//  AdditionalTestPresenter.m
//  WeatherWithViper
//
//  Created by mary on 20/06/2018.
//  Copyright © 2018 sbt. All rights reserved.
//

#import "AdditionalTestPresenter.h"

#import "AdditionalTestViewInput.h"
#import "AdditionalTestInteractorInput.h"
#import "AdditionalTestRouterInput.h"

typedef void(^NetworkFetcherCompletionHandler)(NSMutableArray *data, NSError *error);

@implementation AdditionalTestPresenter

//@synthesize completionHandler = _completionHandler;

#pragma mark - Методы AdditionalTestModuleInput

- (void)configureModule {
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

#pragma mark - Методы AdditionalTestViewOutput

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];
    //[self updateWeather];
    [self.interactor updateWeatherCompletionBlock:^(NSMutableArray *objects, NSError *error) {
        [self.view reloadData];
    }];
}

-(void) updateModel:(id<CityProtocol>)model {
    [self.interactor updateModel:model];
}

-(id<CityProtocol>) getModel {
    return [self.interactor getModel];
}

-(NSMutableArray *)getWeatherMainArray:(id<CityProtocol>) model {
    return [self.interactor getWeatherMainArray:model];
}

-(NSMutableArray *)getWeatherData:(id <CityProtocol>) model {
    return [self.interactor getWeatherData:model];
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return [self.interactor numberOfSectionsInCollectionView:collectionView];
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.interactor collectionView:collectionView numberOfItemsInSection:section];
}

@end
