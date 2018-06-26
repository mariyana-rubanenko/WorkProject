//
//  ModelProtocol.h
//  
//
//  Created by rnov on 16.06.2018.
//

#import <Foundation/Foundation.h>
#import "NewsProtocol.h"

@protocol ModelProtocol <NSObject>

- (void) updateModel:(id<NewsProtocol>) model;
- (id<NewsProtocol>)getModel;


@end
