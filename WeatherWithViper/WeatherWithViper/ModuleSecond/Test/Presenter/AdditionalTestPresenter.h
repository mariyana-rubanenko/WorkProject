//
//  AdditionalTestPresenter.h
//  WeatherWithViper
//
//  Created by mary on 20/06/2018.
//  Copyright © 2018 sbt. All rights reserved.
//

#import "AdditionalTestViewOutput.h"
#import "AdditionalTestInteractorOutput.h"
#import "AdditionalTestModuleInput.h"
#import "UIKit/UIKit.h"
#import "ModelProtocol.h"
#import "Weather.h"

@protocol AdditionalTestViewInput;
@protocol AdditionalTestInteractorInput;
@protocol AdditionalTestRouterInput;

//typedef void(^NetworkFetcherCompletionHandler)(NSMutableArray *data, NSError *error);

@interface AdditionalTestPresenter : NSObject <AdditionalTestModuleInput, AdditionalTestViewOutput, AdditionalTestInteractorOutput, UICollectionViewDelegate, UICollectionViewDataSource, ModelProtocol, NSURLSessionDelegate, NSURLSessionDataDelegate, NSURLSessionTaskDelegate>

@property (nonatomic, weak) id<AdditionalTestViewInput> view;
@property (nonatomic, strong) id<AdditionalTestInteractorInput> interactor;
@property (nonatomic, strong) id<AdditionalTestRouterInput> router;

//@property(nonatomic, copy) NetworkFetcherCompletionHandler completionHandler;

@end
