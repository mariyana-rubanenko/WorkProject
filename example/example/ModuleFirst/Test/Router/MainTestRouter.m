//
//  MainTestRouter.m
//  example
//
//  Created by mary on 04/06/2018.
//  Copyright © 2018 Sberbank. All rights reserved.
//

#import "MainTestRouter.h"
#import "NewsProtocol.h"
#import "MainTestViewInput.h"
#import "ModelProtocol.h"

//#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation MainTestRouter

@synthesize mainViewController;

#pragma mark - Методы MainTestRouterInput
- (void) closeMainView {
}

- (void)showModuleFirstFromModuleSecond:(UIViewController *) view withModel:(id<NewsProtocol>) model {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"AdditionalTest" bundle:[NSBundle mainBundle]];
    UIViewController<ModelProtocol> *secondViewController = [storyboard instantiateInitialViewController];
    [view.navigationController pushViewController:secondViewController animated:YES];
    [secondViewController updateModel:model];
}



@end
