//
//  CellDecorator.m
//  example
//
//  Created by rnov on 13.06.2018.
//  Copyright © 2018 rnov. All rights reserved.
//

#import "CellDecorator.h"
#import "MainTestTableViewCell.h"
#import "NewsProtocol.h"

@implementation CellDecorator

-(void) decorate:(MainTestTableViewCell *) cell news:(id<NewsProtocol>) model {
    cell.title.text = model.titleOfNews;
    cell.date.text = [@(model.dateOfNews) stringValue];
    NSString *strModel = [model.titleOfNews stringByAppendingString:@".png"];
    cell.image.image = [UIImage imageNamed:strModel];
}

@end
