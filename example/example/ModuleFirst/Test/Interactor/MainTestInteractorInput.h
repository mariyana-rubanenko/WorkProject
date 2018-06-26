//
//  MainTestInteractorInput.h
//  example
//
//  Created by mary on 04/06/2018.
//  Copyright © 2018 Sberbank. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol MainTestInteractorInput <NSObject, UITableViewDataSource, UITableViewDelegate>

- (instancetype)init;
- (NSMutableArray *) getNews;
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;

@end
