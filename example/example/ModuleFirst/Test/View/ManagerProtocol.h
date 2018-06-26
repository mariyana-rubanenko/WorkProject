//
//  ManagerProtocol.h
//  example
//
//  Created by rnov on 19.06.2018.
//  Copyright © 2018 rnov. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ManagerProtocol <NSObject>

@required
@property (nonatomic, strong) NSMutableArray *newsList;

@end
