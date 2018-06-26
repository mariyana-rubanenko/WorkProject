//
//  MainTestAssembly.m
//  example
//
//  Created by mary on 04/06/2018.
//  Copyright © 2018 Sberbank. All rights reserved.
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

- (MainTestViewController *)mainTextView {
    return [TyphoonDefinition withClass:[MainTestViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self mainTextPresenter]];
//                              [definition injectProperty:@selector(moduleInput)
//                                                    with:[self mainTextPresenter]];
                              [definition injectProperty:@selector(cellDecorator)
                                                    with:[self cellDecorator]];
                          }];
}

- (MainTestInteractor *)mainTextInteractor {
    return [TyphoonDefinition withClass:[MainTestInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self mainTextPresenter]];
                              [definition injectProperty:@selector(manager) with:[self manager]];
                          }];
}

- (MainTestPresenter *)mainTextPresenter {
    return [TyphoonDefinition withClass:[MainTestPresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self mainTextView]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self mainTextInteractor]];
                              [definition injectProperty:@selector(router)
                                                    with:[self mainTextRouter]];
                          }];
}

- (MainTestRouter *)mainTextRouter {
    return [TyphoonDefinition withClass:[MainTestRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(transitionHandler)
                                                    with:[self mainTextView]];
                          }];
}

- (id)cellDecorator {
    return [TyphoonDefinition withClass:[CellDecorator class]];
}

-(id)manager {
    return [TyphoonDefinition withClass:[Manager class]];
}
@end
