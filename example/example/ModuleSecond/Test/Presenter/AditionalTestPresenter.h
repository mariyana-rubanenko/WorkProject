//
//  AditionalTestPresenter.h
//  example
//
//  Created by mary on 04/06/2018.
//  Copyright © 2018 Sberbank. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AditionalTestViewOutput.h"
#import "AditionalTestInteractorOutput.h"
#import "AditionalTestModuleInput.h"
#import "ModelProtocol.h"

@protocol AditionalTestViewInput;
@protocol AditionalTestInteractorInput;
@protocol AditionalTestRouterInput;

@interface AditionalTestPresenter : NSObject <AditionalTestModuleInput, AditionalTestViewOutput, AditionalTestInteractorOutput, UITableViewDataSource, UITableViewDelegate, ModelProtocol>

@property (nonatomic, weak) id<AditionalTestViewInput> view;
@property (nonatomic, strong) id<AditionalTestInteractorInput> interactor;
@property (nonatomic, strong) id<AditionalTestRouterInput> router;

@end
