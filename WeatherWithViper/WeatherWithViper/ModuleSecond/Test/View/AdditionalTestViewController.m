//
//  AdditionalTestViewController.m
//  WeatherWithViper
//
//  Created by mary on 20/06/2018.
//  Copyright © 2018 sbt. All rights reserved.
//

#import "AdditionalTestViewController.h"

#import "AdditionalTestViewOutput.h"
#import "WeatherCollectionViewCell.h"
#import "HeaderWeatherCollectionReusableView.h"
#import "Weather.h"
#import "Model.h"

@implementation AdditionalTestViewController

@synthesize model = _model, cellDecoratorInSecondVC = _cellDecoratorInSecondVC;

#pragma mark - Методы жизненного цикла

- (void)viewDidLoad {
	[super viewDidLoad];
    [self registerCells];
    
	[self.output didTriggerViewReadyEvent];
    
    NSString *titleFirstPartString = @"Погода в ";
    self.title = [titleFirstPartString stringByAppendingString:[NSString stringWithFormat:@"%@", [self getModel].cityName]];
    
    NSArray *viewControllers = self.navigationController.viewControllers;
    UIViewController *prevController = [viewControllers objectAtIndex:viewControllers.count - 2];
    prevController.title = @"Города";
}

#pragma mark - Методы AdditionalTestViewInput

- (void)setupInitialState {
	// В этом методе происходит настройка параметров view, зависящих от ее жизненого цикла (создание элементов, анимации и пр.)
}

- (void)reloadData {
    [self.collectionView reloadData];
}

- (void) updateModel:(id<CityProtocol>)model {
    [self.output updateModel:model];
}

- (id<CityProtocol>) getModel {
    return [self.output getModel];
}

-(NSMutableArray *)getWeatherData{
    return [self.output getWeatherData];
}

-(NSMutableArray *)getWeatherMainArray {
    return [self.output getWeatherMainArray];
}

-(void) requestFromServerWeatherData:(id <CityProtocol>)model {
    return [self.output requestFromServerWeatherData:model];
}

- (void) registerCells {
    [self.collectionView registerNib:[UINib nibWithNibName:NSStringFromClass([WeatherCollectionViewCell class]) bundle:[NSBundle mainBundle]] forCellWithReuseIdentifier:NSStringFromClass([WeatherCollectionViewCell class])];
    
    [self.collectionView registerNib:[UINib nibWithNibName:NSStringFromClass([HeaderWeatherCollectionReusableView class]) bundle:[NSBundle mainBundle]] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:NSStringFromClass([HeaderWeatherCollectionReusableView class])];
    [self.collectionView registerNib:[UINib nibWithNibName:NSStringFromClass([HeaderWeatherCollectionReusableView class]) bundle:[NSBundle mainBundle]] forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:NSStringFromClass([HeaderWeatherCollectionReusableView class])];
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return [self.output numberOfSectionsInCollectionView:collectionView];
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.output collectionView:collectionView numberOfItemsInSection:section];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    WeatherCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass([WeatherCollectionViewCell class]) forIndexPath:indexPath];
    Weather *weather = [self.output getModelOfWeatherWithIndexPath:indexPath];
    [self.cellDecoratorInSecondVC decorateCellInSecondVC:cell modelOfWeather:weather];
    return cell;
}

-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionReusableView *reusableView = nil;
    if (kind == UICollectionElementKindSectionHeader) {
        HeaderWeatherCollectionReusableView *headerView = [self.collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:NSStringFromClass([HeaderWeatherCollectionReusableView class]) forIndexPath:indexPath];
        
        Model *modelObject = [self.output getWeatherMainArray][indexPath.section];

        NSString *title = [[NSString alloc]initWithFormat:@"%@", modelObject.title];
        headerView.sectionHeaderLabel.text = title;
        reusableView = headerView;
    }
    else if (kind == UICollectionElementKindSectionFooter) {
        HeaderWeatherCollectionReusableView *headerView = [self.collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:NSStringFromClass([HeaderWeatherCollectionReusableView class]) forIndexPath:indexPath];
        reusableView = headerView;
    }
    
    return reusableView;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake(200.0f, 260.0f);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsMake(0.3f, 0.5f, 10.0f, 10.0f);
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section{
    return 50.0f;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return 0.3f;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section {
    return CGSizeMake(100.0f, 50.0f);
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForFooterInSection:(NSInteger)section {
    return CGSizeMake(5.0f, 5.0f);
}

@end
