//
//  CellDecoratorProtocol.h
//  example
//
//  Created by rnov on 13.06.2018.
//  Copyright © 2018 rnov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MainTestTableViewCell.h"
#import "NewsProtocol.h"

@protocol CellDecoratorProtocol <NSObject>

- (void) decorate:(MainTestTableViewCell *) cell news:(id<NewsProtocol>) model;

@end
