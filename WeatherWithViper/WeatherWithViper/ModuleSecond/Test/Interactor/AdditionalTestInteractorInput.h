//
//  AdditionalTestInteractorInput.h
//  WeatherWithViper
//
//  Created by mary on 20/06/2018.
//  Copyright © 2018 sbt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"
#import "CityProtocol.h"
#import "Weather.h"

//typedef void(^NetworkFetcherCompletionHandler)(UICollectionView * viewFromVC);
typedef void(^NetworkFetcherCompletionHandler)(NSMutableArray *objects, NSError *error);

@protocol AdditionalTestInteractorInput <NSObject, UICollectionViewDelegate, UICollectionViewDataSource, NSURLSessionTaskDelegate, NSURLSessionDataDelegate, NSURLSessionDelegate>


-(Weather *)getModelOfWeatherWithIndexPath:(NSIndexPath *)indexPath;
-(NSMutableArray *)getWeatherMainArray;
-(NSMutableArray *)getWeatherData;

-(id<CityProtocol>) getModel;
-(void) updateModel:(id<CityProtocol>)modelFromFirstController;

-(void) prepareDataOfWeather : (NSMutableArray *)data;

-(void) requestFromServerWeatherData : (id <CityProtocol>)model;
-(void) executeTaskURL:(NSURLRequest *)request;

-(void) updateWeatherCompletionBlock:(NetworkFetcherCompletionHandler) completionHandler;

@end
