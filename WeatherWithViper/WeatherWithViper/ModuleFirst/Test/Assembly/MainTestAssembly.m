//
//  MainTestAssembly.m
//  WeatherWithViper
//
//  Created by mary on 20/06/2018.
//  Copyright © 2018 sbt. All rights reserved.
//

#import "MainTestAssembly.h"

#import "MainTestViewController.h"
#import "MainTestInteractor.h"
#import "MainTestPresenter.h"
#import "MainTestRouter.h"
#import "CellDecorator.h"
#import "Manager.h"

//#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation MainTestAssembly

- (MainTestViewController *)viewTestMain {
    return [TyphoonDefinition withClass:[MainTestViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterTestMain]];
                              [definition injectProperty:@selector(cellDecorator)
                                                    with:[self cellDecorator]];
                          }];
}

- (MainTestInteractor *)interactorTestMain {
    return [TyphoonDefinition withClass:[MainTestInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterTestMain]];
                              [definition injectProperty:@selector(manager) with:[self manager]];
                          }];
}

- (MainTestPresenter *)presenterTestMain{
    return [TyphoonDefinition withClass:[MainTestPresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self viewTestMain]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorTestMain]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerTestMain]];
                          }];
}

- (MainTestRouter *)routerTestMain{
    return [TyphoonDefinition withClass:[MainTestRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(transitionHandler)
                                                    with:[self viewTestMain]];
                          }];
}

-(id) cellDecorator {
    return [TyphoonDefinition withClass:[CellDecorator class]];
}

-(id)manager {
    return [TyphoonDefinition withClass:[Manager class]];
}

@end
