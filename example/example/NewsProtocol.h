//
//  NewsProtocol.h
//  example
//
//  Created by rnov on 06.06.2018.
//  Copyright © 2018 rnov. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol NewsProtocol <NSObject>

@property (nonatomic, assign) NSInteger idOfNews;
@property (nonatomic, copy) NSString *titleOfNews;
@property (nonatomic, assign) NSInteger dateOfNews;
@property (nonatomic, copy) NSString *descriptionOfNews;
//@property (nonatomic) NSImageView *imageOfNews;


@end
