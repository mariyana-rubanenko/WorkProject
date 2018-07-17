//
//  MainTestPresenter.h
//  WeatherWithViper
//
//  Created by mary on 20/06/2018.
//  Copyright © 2018 sbt. All rights reserved.
//

#import "MainTestViewOutput.h"
#import "MainTestInteractorOutput.h"
#import "MainTestModuleInput.h"

@protocol MainTestViewInput;
@protocol MainTestInteractorInput;
@protocol MainTestRouterInput;

@interface MainTestPresenter : NSObject <MainTestModuleInput, MainTestViewOutput, MainTestInteractorOutput>

@property (nonatomic, weak) id<MainTestViewInput> view;
@property (nonatomic, strong) id<MainTestInteractorInput> interactor;
@property (nonatomic, strong) id<MainTestRouterInput> router;

@end
