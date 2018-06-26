//
//  AditionalTestViewController.h
//  example
//
//  Created by mary on 04/06/2018.
//  Copyright © 2018 Sberbank. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AditionalTestViewInput.h"
#import "ModelProtocol.h"
#import "NewsProtocol.h"

@protocol AditionalTestViewOutput;
@protocol NewCellDecoratorProtocol;

@interface AditionalTestViewController : UIViewController <AditionalTestViewInput, UITableViewDelegate, UITableViewDataSource, ModelProtocol>

@property (nonatomic, strong) id<AditionalTestViewOutput> output;
@property (nonatomic, strong) id<NewCellDecoratorProtocol> cellDecoratorNew;
@property (nonatomic, strong) id<NewsProtocol> model;
@property (nonatomic, weak) IBOutlet UILabel *title;
@property (nonatomic, weak) IBOutlet UILabel *date;
@property (nonatomic, weak) IBOutlet UILabel *description;

@end
