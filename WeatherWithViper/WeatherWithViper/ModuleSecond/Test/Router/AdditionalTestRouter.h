//
//  AdditionalTestRouter.h
//  WeatherWithViper
//
//  Created by mary on 20/06/2018.
//  Copyright © 2018 sbt. All rights reserved.
//

#import "AdditionalTestRouterInput.h"

@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface AdditionalTestRouter : NSObject <AdditionalTestRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end
