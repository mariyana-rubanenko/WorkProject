//
//  AdditionalTestInteractor.h
//  WeatherWithViper
//
//  Created by mary on 20/06/2018.
//  Copyright © 2018 sbt. All rights reserved.
//

#import "AdditionalTestInteractorInput.h"
#import "UIKit/UIKit.h"

@protocol AdditionalTestInteractorOutput;

typedef void(^NetworkFetcherCompletionHandler)(NSMutableArray *array, NSError *error);

@interface AdditionalTestInteractor : NSObject <AdditionalTestInteractorInput, UICollectionViewDataSource, UICollectionViewDelegate, NSURLSessionDelegate, NSURLSessionDataDelegate, NSURLSessionTaskDelegate>

@property (nonatomic, weak) id<AdditionalTestInteractorOutput> output;
@property (nonatomic, strong) id<CityProtocol> model;

@property (strong, nonatomic) NSMutableArray *data;
@property (strong, nonatomic) NSURLSession *session;
@property (strong, nonatomic) NSString *urlString;
@property (strong, nonatomic) NSMutableDictionary *dict;
@property (strong, nonatomic) NSMutableArray *mainArray;
@property (strong, nonatomic) NSError *error;

@property (nonatomic, copy) NetworkFetcherCompletionHandler completionHandler;

@end
