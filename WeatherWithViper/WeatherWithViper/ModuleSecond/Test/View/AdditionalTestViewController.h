//
//  AdditionalTestViewController.h
//  WeatherWithViper
//
//  Created by mary on 20/06/2018.
//  Copyright © 2018 sbt. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AdditionalTestViewInput.h"
#import "CityProtocol.h"
#import "CellDecoratorSecondProtocol.h"

//typedef void(^NetworkFetcherCompletionHandler)(NSData *data, NSError *error);

@protocol AdditionalTestViewOutput;

@interface AdditionalTestViewController : UIViewController <AdditionalTestViewInput, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, NSURLSessionTaskDelegate, NSURLSessionDataDelegate, NSURLSessionDelegate>

@property (nonatomic, strong) id<AdditionalTestViewOutput> output;
@property (nonatomic, weak) IBOutlet UICollectionView *collectionView;
@property (nonatomic, strong) id<CityProtocol> model;
@property (nonatomic, strong) id<CellDecoratorSecondProtocol> cellDecoratorInSecondVC;


@end
