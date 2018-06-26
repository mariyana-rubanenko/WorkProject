//
//  News.h
//  example
//
//  Created by rnov on 06.06.2018.
//  Copyright © 2018 rnov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NewsProtocol.h"

@interface News : NSObject<NewsProtocol>

- (instancetype) initWithName: (NSInteger)idNews title:(NSString*)titleNews date:(NSInteger)dateNews description:(NSString*)descriptionNews;

@end
