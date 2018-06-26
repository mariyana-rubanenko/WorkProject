//
//  AditionalTestViewOutput.h
//  example
//
//  Created by mary on 04/06/2018.
//  Copyright © 2018 Sberbank. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ModelProtocol.h"

@protocol AditionalTestViewOutput <ModelProtocol>

/**
 @author mary

 Метод сообщает презентеру о том, что view готова к работе
 */
- (void)didTriggerViewReadyEvent;
- (void) updateModel:(id<NewsProtocol>)model;
-(id<NewsProtocol>) getModel;

@end
