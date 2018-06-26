//
//  AditionalTestInteractorInput.h
//  example
//
//  Created by mary on 04/06/2018.
//  Copyright © 2018 Sberbank. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NewsProtocol.h"

@protocol AditionalTestInteractorInput <NSObject>

-(void) updateModel:(id<NewsProtocol>)model;
-(id<NewsProtocol>) getModel;

@end
