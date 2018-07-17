//
//  MainTestPresenter.m
//  example
//
//  Created by mary on 04/06/2018.
//  Copyright © 2018 Sberbank. All rights reserved.
//

#import "MainTestPresenter.h"

#import "MainTestViewInput.h"
#import "MainTestInteractorInput.h"
#import "MainTestRouterInput.h"
#import "NewsProtocol.h"

@interface MainTestPresenter() <UITableViewDataSource, UITableViewDelegate>
@end

@implementation MainTestPresenter

#pragma mark - Методы MainTestModuleInput

- (void)configureModule {
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.interactor numberOfSectionsInTableView:tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.interactor tableView:tableView numberOfRowsInSection:section];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSMutableArray *newArrayOfNews = [self.interactor getNews];
    id<NewsProtocol> model = newArrayOfNews[indexPath.row];
    [self.router showModuleFirstFromModuleSecond:self.view withModel:model];
}

- (id<NewsProtocol>)getModelWithIndexPath:(NSIndexPath *)indexPath {
    return [self.interactor getNews][indexPath.row];
}

- (void)initDataOfNews {
    [self.interactor init];
}


#pragma mark - Методы MainTestInteractorOutput

@end
