//
//  MainTestInteractorInput.h
//  WeatherWithViper
//
//  Created by mary on 20/06/2018.
//  Copyright © 2018 sbt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"

@protocol MainTestInteractorInput <NSObject, UITableViewDataSource, UITableViewDelegate>

-(instancetype)init;
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView;
-(NSMutableArray *) getCities;

@end
