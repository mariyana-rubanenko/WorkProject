//
//  MainTestPresenter.h
//  example
//
//  Created by mary on 04/06/2018.
//  Copyright © 2018 Sberbank. All rights reserved.
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
