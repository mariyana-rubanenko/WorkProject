//
//  AditionalTestAssembly.m
//  example
//
//  Created by mary on 04/06/2018.
//  Copyright © 2018 Sberbank. All rights reserved.
//

#import "AditionalTestAssembly.h"

#import "AditionalTestViewController.h"
#import "AditionalTestInteractor.h"
#import "AditionalTestPresenter.h"
#import "AditionalTestRouter.h"

//#import <ViperMcFlurry/ViperMcFblurry.h>

@implementation AditionalTestAssembly

- (AditionalTestViewController *)viewTest {
    return [TyphoonDefinition withClass:[AditionalTestViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterTest]];
//                              [definition injectProperty:@selector(moduleInput)
//                                                    with:[self presenterTest]];
                          }];
}

- (AditionalTestInteractor *)interactorTest {
    return [TyphoonDefinition withClass:[AditionalTestInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterTest]];
                          }];
}

- (AditionalTestPresenter *)presenterTest{
    return [TyphoonDefinition withClass:[AditionalTestPresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self viewTest]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorTest]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerTest]];
                          }];
}

- (AditionalTestRouter *)routerTest{
    return [TyphoonDefinition withClass:[AditionalTestRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(transitionHandler)
                                                    with:[self viewTest]];
                          }];
}

@end
