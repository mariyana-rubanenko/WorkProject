//
//  Manager.m
//  example
//
//  Created by rnov on 19.06.2018.
//  Copyright © 2018 rnov. All rights reserved.
//

#import "Manager.h"
#import "News.h"


@implementation Manager
@synthesize newsList = _newsList;

- (instancetype)init {
    self = [super init];
    if (self) {
        [self initNews];
    }
    return self;
}

-(void)initNews {
        self.newsList = [NSMutableArray new];
        NSLog(@"%@",@"wqer");
        News* news1 = [[News alloc] initWithName:1 title:@"one" date:1 description:@"one news"];
        News* news2 = [[News alloc] initWithName:2 title:@"two" date:2 description:@"two news"];
        News* news3 = [[News alloc] initWithName:3 title:@"three" date:3 description:@"three news"];
        News* news4 = [[News alloc] initWithName:4 title:@"four" date:4 description:@"four news"];
        News* news5 = [[News alloc] initWithName:5 title:@"five" date:5 description:@"five news"];
    
        [self.newsList addObjectsFromArray:@[news1, news2, news3, news4, news5]];
         NSLog(@"%@",self.newsList);
}

@end
