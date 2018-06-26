//
//  AditionalTestViewController.m
//  example
//
//  Created by mary on 04/06/2018.
//  Copyright © 2018 Sberbank. All rights reserved.
//

#import "AditionalTestViewController.h"

#import "AditionalTestViewOutput.h"



@implementation AditionalTestViewController

@synthesize cellDecoratorNew, title = _title, date = _date, description = _description;

#pragma mark - Методы жизненного цикла

- (void)viewDidLoad {
    [super viewDidLoad];
    [self passModel];
    [self.output didTriggerViewReadyEvent];
}

#pragma mark - Методы AditionalTestViewInput

- (void)setupInitialState {
	// В этом методе происходит настройка параметров view, зависящих от ее жизненого цикла (создание элементов, анимации и пр.)
}

-(void) updateModel:(id<NewsProtocol>)model {
    //self.model = [self getModel];
    [self.output updateModel:model];
}

-(id<NewsProtocol>) getModel {
    return [self.output getModel];
}

-(void) passModel {
    id<NewsProtocol> model = [self getModel];
    self.title.text = model.titleOfNews;
    self.date.text = [@(model.dateOfNews) stringValue];
    self.description.text = model.descriptionOfNews;
}

@end
