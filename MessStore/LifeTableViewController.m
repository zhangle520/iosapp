//
//  LifeTableViewController.m
//  MessStore
//
//  Created by zhangle on 17/2/1.
//  Copyright © 2017年 MissZhang. All rights reserved.
//

#import "LifeTableViewController.h"
#import <Foundation/Foundation.h>
#import "LifeSection.h"
#import "LifeBodyItem.h"
#import "LifeBodyCell.h"
#import "WeatherModel.h"
#import "MSComment.h"

@interface LifeTableViewController ()
@property (nonatomic, strong) NSMutableArray *sections;
@end
static NSString * const reuseIdentifier = @"LifeBodyCell";
@implementation LifeTableViewController
//- (NSMutableArray *)sections{
//    if (self.sections == nil) {
//        self.sections = [NSMutableArray array];
//    }
//    return self.sections;
//}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.sections = [NSMutableArray array];
    [self registCell];
    [self addSectionFind];
    
}

#pragma mark 注册Cells
- (void)registCell{
    //注册内容Cell
    UINib *nib = [UINib nibWithNibName:reuseIdentifier bundle:nil];
    [self.collectionView registerNib:nib forCellWithReuseIdentifier:reuseIdentifier];
    
}

- (void)addSectionFind{
    //初始化
    LifeSection *section = [LifeSection section];
    section.headTitle = @"生活查询";
    LifeBodyItem *idItem = [LifeBodyItem initWithTitle:@"身份证查询" icon:@"s3"];
    
    [section.items addObjectsFromArray:@[idItem]];
    [self.sections addObject:section];
}
#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return self.sections.count;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    LifeSection *lifeSection = self.sections[section];
    return lifeSection.items.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    LifeBodyCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // 传递模型
    LifeSection *lifeSection = self.sections[indexPath.section];
    
    cell.item = lifeSection.items[indexPath.item];
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
 // Uncomment this method to specify if the specified item should be highlighted during tracking
 - (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
 }
 */

/*
 // Uncomment this method to specify if the specified item should be selected
 - (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
 return YES;
 }
 */

/*
 // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
 - (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
 }
 
 - (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
 }
 
 - (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
 }
 */

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
