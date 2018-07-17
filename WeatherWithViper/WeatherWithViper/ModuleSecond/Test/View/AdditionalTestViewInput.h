//
//  AdditionalTestViewInput.h
//  WeatherWithViper
//
//  Created by mary on 20/06/2018.
//  Copyright © 2018 sbt. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UICollectionView;
@protocol AdditionalTestViewInput <NSObject>

/**
 @author mary

 Метод настраивает начальный стейт view
 */
- (void)setupInitialState;
//@property (nonatomic, weak) IBOutlet UICollectionView *collectionView;

- (UICollectionView*)collectionView;
- (void)reloadData;

@end
