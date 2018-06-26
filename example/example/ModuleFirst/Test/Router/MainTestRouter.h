//
//  MainTestRouter.h
//  example
//
//  Created by mary on 04/06/2018.
//  Copyright © 2018 Sberbank. All rights reserved.
//

#import "MainTestRouterInput.h"
#import "MainTestViewController.h"
#import "AditionalTestViewController.h"
#import "ModelProtocol.h"

@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface MainTestRouter : NSObject <MainTestRouterInput, ModelProtocol>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;
@property (nonatomic, weak) MainTestViewController *mainViewController;

@end
