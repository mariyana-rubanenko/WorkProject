//
//  MainTestInteractor.h
//  example
//
//  Created by mary on 04/06/2018.
//  Copyright © 2018 Sberbank. All rights reserved.
//

#import "MainTestInteractorInput.h"
#import "NewsProtocol.h"
#import "News.h"
#import "UIKit/UIKit.h"

@protocol MainTestInteractorOutput;
@protocol ManagerProtocol;

@interface MainTestInteractor : NSObject <MainTestInteractorInput, UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) id<MainTestInteractorOutput> output;
@property (nonatomic, strong) NSMutableArray *newsList;
@property (nonatomic, strong) id<NewsProtocol> model;
@property (nonatomic, strong) id<ManagerProtocol> manager;

@end
