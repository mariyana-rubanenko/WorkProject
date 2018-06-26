//
//  News.m
//  example
//
//  Created by rnov on 06.06.2018.
//  Copyright © 2018 rnov. All rights reserved.
//

#import "News.h"

@implementation News

@synthesize idOfNews = _idOfNews, titleOfNews = _titleOfNews, dateOfNews = _dateOfNews, descriptionOfNews = _descriptionOfNews;

- (instancetype) initWithName:(NSInteger)idNews title:(NSString *)titleNews date:(NSInteger)dateNews description:(NSString *)descriptionNews {
    self = [super init];
    if (self) {
        self.idOfNews = idNews;
        self.titleOfNews = titleNews;
        self.dateOfNews = dateNews;
        self.descriptionOfNews = descriptionNews;
        
    }
    return self;
}

@end
