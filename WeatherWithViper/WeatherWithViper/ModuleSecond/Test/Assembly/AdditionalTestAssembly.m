//
//  AdditionalTestAssembly.m
//  WeatherWithViper
//
//  Created by mary on 20/06/2018.
//  Copyright © 2018 sbt. All rights reserved.
//

#import "AdditionalTestAssembly.h"

#import "AdditionalTestViewController.h"
#import "AdditionalTestInteractor.h"
#import "AdditionalTestPresenter.h"
#import "AdditionalTestRouter.h"
#import "CellDecoratorSecond.h"

//#import <ViperMcFlurry/ViperMcFlurry.h>


@implementation AdditionalTestAssembly

- (AdditionalTestViewController *)viewTest {
    return [TyphoonDefinition withClass:[AdditionalTestViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterTest]];
//                              [definition injectProperty:@selector(moduleInput)
//                                                    with:[self presenterTest]];
                              [definition injectProperty:@selector(cellDecoratorInSecondVC)
                                                    with:[self cellDecoratorInSecondVC]];
                          }];
}

- (AdditionalTestInteractor *)interactorTest {
    return [TyphoonDefinition withClass:[AdditionalTestInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterTest]];
                          }];
}

- (AdditionalTestPresenter *)presenterTest{
    return [TyphoonDefinition withClass:[AdditionalTestPresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self viewTest]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorTest]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerTest]];
                          }];
}

- (AdditionalTestRouter *)routerTest{
    return [TyphoonDefinition withClass:[AdditionalTestRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(transitionHandler)
                                                    with:[self viewTest]];
                          }];
}

-(id) cellDecoratorInSecondVC {
    return [TyphoonDefinition withClass:[CellDecoratorSecond class]];
}

@end
