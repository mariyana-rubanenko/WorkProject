//
//  AditionalTestInteractor.h
//  example
//
//  Created by mary on 04/06/2018.
//  Copyright © 2018 Sberbank. All rights reserved.
//

#import "AditionalTestInteractorInput.h"
#import "NewsProtocol.h"
#import "ModelProtocol.h"

@protocol AditionalTestInteractorOutput;

@interface AditionalTestInteractor : NSObject <AditionalTestInteractorInput, ModelProtocol>

@property (nonatomic, weak) id<AditionalTestInteractorOutput> output;
@property (nonatomic, strong) id<NewsProtocol> model;

@end
