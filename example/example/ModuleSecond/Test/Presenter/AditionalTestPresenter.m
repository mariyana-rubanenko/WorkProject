//
//  AditionalTestPresenter.m
//  example
//
//  Created by mary on 04/06/2018.
//  Copyright © 2018 Sberbank. All rights reserved.
//

#import "AditionalTestPresenter.h"

#import "AditionalTestViewInput.h"
#import "AditionalTestInteractorInput.h"
#import "AditionalTestRouterInput.h"

@implementation AditionalTestPresenter

#pragma mark - Методы AditionalTestModuleInput

- (void)configureModule {
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

#pragma mark - Методы AditionalTestViewOutput

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];
}

-(void) updateModel:(id<NewsProtocol>)model {
    [self.interactor updateModel:model];
}

-(id<NewsProtocol>) getModel {
    return [self.interactor getModel];
}

#pragma mark - Методы AditionalTestInteractorOutput

@end
