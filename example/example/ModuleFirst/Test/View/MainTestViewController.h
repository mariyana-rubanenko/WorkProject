//
//  MainTestViewController.h
//  example
//
//  Created by mary on 04/06/2018.
//  Copyright © 2018 Sberbank. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MainTestViewInput.h"

@protocol MainTestViewOutput;
@protocol CellDecoratorProtocol;

@interface MainTestViewController : UIViewController <MainTestViewInput, UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) id<MainTestViewOutput> output;
@property (nonatomic, strong) id<CellDecoratorProtocol> cellDecorator;
//@property (nonatomic, strong) id<ManagerProtocol> manager;

@end
