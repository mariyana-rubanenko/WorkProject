//
//  MainTestRouter.h
//  WeatherWithViper
//
//  Created by mary on 20/06/2018.
//  Copyright © 2018 sbt. All rights reserved.
//

#import "MainTestRouterInput.h"
#import "MainTestViewController.h"

@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface MainTestRouter : NSObject <MainTestRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;
@property (nonatomic, weak) MainTestViewController *mainViewController;

@end
