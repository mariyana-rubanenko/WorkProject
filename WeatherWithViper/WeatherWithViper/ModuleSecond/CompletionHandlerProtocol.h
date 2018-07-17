//
//  CompletionHandlerProtocol.h
//  WeatherWithViper
//
//  Created by rnov on 04.07.2018.
//  Copyright © 2018 rnov. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CompletionHandlerProtocol <NSObject>

@required
@property (nonatomic, copy) NetworkFetcherCompletionHandler completionHandler;

@end
