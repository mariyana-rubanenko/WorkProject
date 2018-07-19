//
//  MainTestInteractor.m
//  WeatherWithViper
//
//  Created by mary on 20/06/2018.
//  Copyright © 2018 sbt. All rights reserved.
//

#import "MainTestInteractor.h"

#import "MainTestInteractorOutput.h"
#import "ManagerProtocol.h"

#define kNumberOfSection 1;

@implementation MainTestInteractor

@synthesize citiesList = _citiesList, manager = _manager;

#pragma mark - Методы MainTestInteractorInput

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return kNumberOfSection;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.manager citiesList].count;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    return nil;
}

-(NSMutableArray *) getCities {
    return [self.manager citiesList];
}

@end
