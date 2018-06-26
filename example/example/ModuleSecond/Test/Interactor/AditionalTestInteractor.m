//
//  AditionalTestInteractor.m
//  example
//
//  Created by mary on 04/06/2018.
//  Copyright © 2018 Sberbank. All rights reserved.
//

#import "AditionalTestInteractor.h"

#import "AditionalTestInteractorOutput.h"
#import "NewsProtocol.h"

@implementation AditionalTestInteractor

@synthesize model;

-(void) updateModel:(id<NewsProtocol>)modelFromFirstController {
    self.model = modelFromFirstController;
}

-(id<NewsProtocol>) getModel {
   // NSLog(@"%@",self.model);
    return self.model;
}

#pragma mark - Методы AditionalTestInteractorInput

@end
