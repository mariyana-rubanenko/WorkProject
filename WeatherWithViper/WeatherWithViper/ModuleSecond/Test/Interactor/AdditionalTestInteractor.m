//
//  AdditionalTestInteractor.m
//  WeatherWithViper
//
//  Created by mary on 20/06/2018.
//  Copyright © 2018 sbt. All rights reserved.
//

#import "AdditionalTestInteractor.h"

#import "AdditionalTestInteractorOutput.h"
#import "CityProtocol.h"
#import "Weather.h"
#import "Model.h"

@implementation AdditionalTestInteractor

@synthesize data = _data, session = _session, urlString = _urlString, dict = _dict, mainArray = _mainArray, model = _model, completionHandler = _completionHandler, error = _error;

#pragma mark - Методы AdditionalTestInteractorInput

-(void) updateModel:(id<CityProtocol>)modelFromFirstController {
    self.model = modelFromFirstController;
}

-(id<CityProtocol>) getModel {
    return self.model;
}

-(NSMutableArray *)getWeatherData:(id <CityProtocol>) model{
    return self.data;
}

-(NSMutableArray *)getWeatherMainArray:(id<CityProtocol>) model{
    NSMutableArray *arrayNew = [self getWeatherData:model];
    [self prepareDataOfWeather:arrayNew];
    return self.mainArray;
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    id<CityProtocol> modelNew = [self getModel];
    return [self getWeatherMainArray:modelNew].count;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    id<CityProtocol> modelNew = [self getModel];
    Model *modelObject = [self getWeatherMainArray:modelNew][section];
    return [modelObject.values count];
}

-(void) requestFromServerWeatherData : (id <CityProtocol>)model {
    
    NSURLSessionConfiguration *sessionConfig = [NSURLSessionConfiguration defaultSessionConfiguration];
    self.session = [NSURLSession sessionWithConfiguration:sessionConfig];
    
    NSString *urlStaticFirstPartString = @"http://api.openweathermap.org/data/2.5/forecast?id=";
    NSString *urlStaticSecondPartString = @"&APPID=e53f84ff98fb72858119da13de284c00";
    self.urlString = [[urlStaticFirstPartString stringByAppendingString:[NSString stringWithFormat:@"%li",model.cityId]] stringByAppendingString:urlStaticSecondPartString];
    
    NSURLRequest* request = [NSURLRequest requestWithURL:[NSURL URLWithString:self.urlString]];
    [self executeTaskURL:request];
}

-(void) executeTaskURL:(NSURLRequest *)request{

    //__weak typeof(self) weakSelf = self;
    NSURLSessionDataTask *taskURL = [self.session dataTaskWithRequest:request completionHandler:^(NSData *  dataURL, NSURLResponse *  response, NSError *  error) {
        NSDictionary* weatherDict = [NSJSONSerialization JSONObjectWithData:dataURL options:kNilOptions error:&error];
        NSArray * weatherList = [weatherDict objectForKey:@"list"];
        
        self.data = [NSMutableArray array];
        
        for (NSDictionary *dict in weatherList) {
            Weather *weather = [[Weather alloc] init];
            weather.timeWeather = [dict valueForKeyPath:@"dt_txt"];
            weather.tempWeather = [dict valueForKeyPath:@"main.temp"];
            weather.pressureWeather = [dict valueForKeyPath:@"main.pressure"];
            weather.humidityWeather = [dict valueForKeyPath:@"main.humidity"];
            weather.windSpeedWeather = [dict valueForKeyPath:@"wind.speed"];
            NSArray *weatherListNameImage = [dict valueForKey:@"weather"];
            NSDictionary *dictWeatherListNameImage = [weatherListNameImage objectAtIndex:0];
            weather.nameImageWeather = [dictWeatherListNameImage valueForKey:@"main"];
            
            [self.data addObject:weather];
        }
        
        if (self.completionHandler) {
            dispatch_async(dispatch_get_main_queue(), ^{
                self.completionHandler(self.data, nil);
            });
        }
    }];
    [taskURL resume];
}

-(void) updateWeatherCompletionBlock:(NetworkFetcherCompletionHandler) completionHandler{
    self.completionHandler = completionHandler;
    [self requestFromServerWeatherData:self.model];
}

-(void) prepareDataOfWeather : (NSMutableArray *)data {
    self.dict = [NSMutableDictionary dictionary];

    for (Weather *weather in data) {
        NSString *dateString = [weather.timeWeather substringToIndex:10];
        NSMutableArray * arrayOfTimeWeather = [self.dict objectForKey:dateString];
        if (!arrayOfTimeWeather) {
            arrayOfTimeWeather = [NSMutableArray array];
        }
        
        [arrayOfTimeWeather addObject:weather];
        [self.dict setObject:arrayOfTimeWeather forKey:dateString];
    }
    self.mainArray = [NSMutableArray array];
    for (NSString *dataString in self.dict) {
        Model *modelObject = [[Model alloc] init];
        modelObject.title = dataString;
        modelObject.values = self.dict[dataString];
        [self.mainArray addObject:modelObject];
    }
}

@end
