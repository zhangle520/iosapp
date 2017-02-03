//
//  WeatherViewController.m
//  MessStore
//
//  Created by zhangle on 17/2/2.
//  Copyright © 2017年 MissZhang. All rights reserved.
//

#import "WeatherViewController.h"
#import "WeatherTableViewCell.h"
#import "WeatherModel.h"
#import "MSComment.h"

@interface WeatherViewController ()
@property (nonatomic, strong) WeatherModel *model;
@end
static NSString * const reuseIdentifier = @"WeatherTableViewCell";
@implementation WeatherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"天气";
    [self registCell];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}
- (instancetype)init{
    if (self = [super init]) {
        
    }
    return self;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)registCell{
    UINib *nib = [UINib nibWithNibName:reuseIdentifier bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:reuseIdentifier];
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 6;
}

#pragma mark - Table view delegate

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    WeatherTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[WeatherTableViewCell alloc] init];
    }
    self.model = [[WeatherModel alloc] getUrl:WeatherUrl];
    [cell initWithModel:_model];
    
    return cell;
}

//-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    
//}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
