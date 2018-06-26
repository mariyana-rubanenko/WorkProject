//
//  MainTestViewOutput.h
//  example
//
//  Created by mary on 04/06/2018.
//  Copyright © 2018 Sberbank. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "NewsProtocol.h"

@class UIViewController;

@protocol MainTestViewOutput <UITableViewDataSource, UITableViewDelegate>

/**
 @author mary

 Метод сообщает презентеру о том, что view готова к работе
 */
- (void)didTriggerViewReadyEvent;


/*
 Сообщает презентору, что кнопка была нажата
*/

//- (void)didOnTapButtonInViewController:(UIViewController*)viewController;

- (void)didSelectNew;
- (void)initDataOfNews;
- (id<NewsProtocol>) getModelWithIndexPath:(NSIndexPath *)indexPath;
@end
