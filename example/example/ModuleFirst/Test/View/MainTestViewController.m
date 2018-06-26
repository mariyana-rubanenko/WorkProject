//
//  MainTestViewController.m
//  example
//
//  Created by mary on 04/06/2018.
//  Copyright © 2018 Sberbank. All rights reserved.
//

#import "MainTestViewController.h"

#import "MainTestViewOutput.h"
#import "MainTestTableViewCell.h"
#import "NewsProtocol.h"
#import "CellDecoratorProtocol.h"

@interface MainTestViewController()

@property (nonatomic, weak) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *arrayOfNews;

@end

@implementation MainTestViewController

//@synthesize manager = _manager;

#pragma mark - Методы жизненного цикла

- (void)viewDidLoad {
    [super viewDidLoad];
    [self registerCells];
    //[self.output didTriggerViewReadyEvent];
}

/*- (IBAction)tapButtonAction:(UIButton *)sender {
    [self.output didOnTapButtonInViewController:self];
    
}
*/
#pragma mark - Методы MainTestViewInput

- (void)setupInitialState {
	// В этом методе происходит настройка параметров view, зависящих от ее жизненого цикла (создание элементов, анимации и пр.)
}

- (void) registerCells {
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([MainTestTableViewCell class]) bundle:[NSBundle mainBundle]]
         forCellReuseIdentifier:NSStringFromClass([MainTestTableViewCell class])];
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.output tableView:tableView numberOfRowsInSection:section];
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.output numberOfSectionsInTableView:tableView];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MainTestTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([MainTestTableViewCell class])];
    id<NewsProtocol> model = [self.output getModelWithIndexPath:indexPath];
    [self.cellDecorator decorate:cell news:model];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100.;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.output tableView:tableView didSelectRowAtIndexPath:indexPath];
}

-(instancetype)init {
    self = [super init];
    if (self) {
        NSLog(@"%@", @"ersfdc");
        [self.output initDataOfNews];
    }
    return self;
}

@end
