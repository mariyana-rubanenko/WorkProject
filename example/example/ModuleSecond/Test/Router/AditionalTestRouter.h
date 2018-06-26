//
//  AditionalTestRouter.h
//  example
//
//  Created by mary on 04/06/2018.
//  Copyright © 2018 Sberbank. All rights reserved.
//

#import "AditionalTestRouterInput.h"

@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface AditionalTestRouter : NSObject <AditionalTestRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end
