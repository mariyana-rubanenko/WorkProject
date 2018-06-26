//
//  MainTestInteractor.m
//  example
//
//  Created by mary on 04/06/2018.
//  Copyright © 2018 Sberbank. All rights reserved.
//

#import "MainTestInteractor.h"
#import "ManagerProtocol.h"
#import "MainTestInteractorOutput.h"
#import "News.h"
#import "ManagerProtocol.h"

#define kNumberOfSections 1;

@implementation MainTestInteractor

@synthesize newsList, model, manager = _manager;
#pragma mark - Методы MainTestInteractorInput

//-(instancetype)init{
//    self = [super init];
//    if (self) {
//        self.newsList = [NSMutableArray new];
//
//        News* news1 = [[News alloc] initWithName:1 title:@"one" date:1 description:@"one news"];
//        News* news2 = [[News alloc] initWithName:2 title:@"two" date:2 description:@"two news"];
//        News* news3 = [[News alloc] initWithName:3 title:@"three" date:3 description:@"three news"];
//        News* news4 = [[News alloc] initWithName:4 title:@"four" date:4 description:@"four news"];
//        News* news5 = [[News alloc] initWithName:5 title:@"five" date:5 description:@"five news"];
//
//        [self.newsList addObjectsFromArray:@[news1, news2, news3, news4, news5]];
//    }
//    return self;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.manager newsList].count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return kNumberOfSections;
}
-(NSMutableArray *) getNews {
    return [self.manager newsList];
}


@end
