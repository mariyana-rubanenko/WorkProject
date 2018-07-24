//
//  MainTestRouter.m
//  WeatherWithViper
//
//  Created by mary on 20/06/2018.
//  Copyright © 2018 sbt. All rights reserved.
//

#import "MainTestRouter.h"
#import "ModelProtocol.h"
#import "CityProtocol.h"

//#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation MainTestRouter

#pragma mark - Методы MainTestRouterInput

- (void)showModuleFirstFromModuleSecond:(UIViewController *) view withModel:(id<CityProtocol>) model {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"SecondStoryboard" bundle:[NSBundle mainBundle]];
    UIViewController<ModelProtocol> *secondViewController = [storyboard instantiateInitialViewController];
    [secondViewController updateModel:model];
    [view.navigationController pushViewController:secondViewController animated:YES];
    
}


@end
