//
//  Manager.m
//  WeatherWithViper
//
//  Created by rnov on 23.06.2018.
//  Copyright © 2018 rnov. All rights reserved.
//

#import "Manager.h"
#import "City.h"

@implementation Manager

@synthesize citiesList = _citiesList;

- (instancetype)init {
    self = [super init];
    if (self) {
        [self initCities];
    }
    return self;
}

-(void)initCities {
    self.citiesList = [NSMutableArray new];
    City *city1 = [[City alloc] initWithName:@"Moscow" id:524901];
    City *city2 = [[City alloc] initWithName:@"Smolensk" id:491687];
    City *city3 = [[City alloc] initWithName:@"St Peterburg" id:4171563];
    City *city4 = [[City alloc] initWithName:@"Volgograd" id:472757];
    City *city5 = [[City alloc] initWithName:@"Sochi" id:491422];
    [self.citiesList addObjectsFromArray:@[city1, city2, city3, city4, city5]];
}

@end
