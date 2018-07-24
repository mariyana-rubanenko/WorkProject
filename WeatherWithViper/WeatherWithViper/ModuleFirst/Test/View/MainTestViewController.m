//
//  MainTestViewController.m
//  WeatherWithViper
//
//  Created by mary on 20/06/2018.
//  Copyright © 2018 sbt. All rights reserved.
//

#import "MainTestViewController.h"

#import "MainTestViewOutput.h"
#import "CityTableViewCell.h"
#import "CityProtocol.h"


#define kNumberOfSection 1

@implementation MainTestViewController

@synthesize citiesList = _citiesList;
#pragma mark - Методы жизненного цикла

- (void)viewDidLoad {
	[super viewDidLoad];
    [self registerCells];
	[self.output didTriggerViewReadyEvent];
//    self.title = @"Города";
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.title = @"Города";
}

#pragma mark - Методы MainTestViewInput

- (void)setupInitialState {
	// В этом методе происходит настройка параметров view, зависящих от ее жизненого цикла (создание элементов, анимации и пр.)
}

-(void)registerCells {
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([CityTableViewCell class]) bundle:[NSBundle mainBundle]] forCellReuseIdentifier:NSStringFromClass([CityTableViewCell class])];
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.output numberOfSectionsInTableView:tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.output tableView:tableView numberOfRowsInSection:section];
}

-(UITableViewCell *)tableView:(UITableView *) tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CityTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([CityTableViewCell class])];
    id<CityProtocol> model = [self.output getModelWithIndexPath:indexPath];
    [self.cellDecorator decorate:cell city:model];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.output tableView:tableView didSelectRowAtIndexPath:indexPath];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100.0f;
}


@end
