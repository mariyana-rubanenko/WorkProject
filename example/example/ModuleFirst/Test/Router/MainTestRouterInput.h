//
//  MainTestRouterInput.h
//  example
//
//  Created by mary on 04/06/2018.
//  Copyright © 2018 Sberbank. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewsProtocol.h"

@protocol MainTestRouterInput <NSObject>

@required
//- (void)showAdditionalViewControllerFromViewController:(UIViewController*)fromVC;

- (void)showModuleFirstFromModuleSecond:(UIViewController *) view withModel:(id<NewsProtocol>) model;
- (void)closeMainView;

@end
