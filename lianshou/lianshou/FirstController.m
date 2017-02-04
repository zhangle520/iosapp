//
//  FirstController.m
//  lianshou
//
//  Created by zhangle on 17/2/3.
//  Copyright © 2017年 MissZhang. All rights reserved.
//

#import "FirstController.h"
#import "membershipController.h"
#import <UIKit/UIKit.h>
@interface FirstController ()

@end

@implementation FirstController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    //隐藏多余cell
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    //self.tableView.tableHeaderView = nil;
    //固定table，不滚动
   // self.tableView.bounces = NO;
   // self.tableView.scrollsToTop = NO;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 8;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [UITableViewCell new];
    //cell.separatorInset = UIEdgeInsetsMake(0, 15, 0, 0);
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    NSArray *arr = @[@"好友圈", @"找人", @"摇一摇",@"扫一扫",@"好友圈", @"找人", @"摇一摇",@"扫一扫"];
    cell.textLabel.text = arr [indexPath.row];
//    switch (indexPath.section) {
//        case 0:
//            cell.textLabel.text = @"好友圈";
//            break;
//        case 1:
//            cell.textLabel.text = @[@"找人", @"活动"][indexPath.row];
//            break;
//        case 2:
//            cell.textLabel.text = @[@"扫一扫", @"摇一摇"][indexPath.row];
//            break;
//        default: break;
//    }
    cell.selectedBackgroundView = [[UIView alloc] initWithFrame:cell.frame];
    cell.selectedBackgroundView.backgroundColor = [UIColor grayColor];
    
    return cell;
}
#pragma mark - Table view delegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch (indexPath.row) {
        case 0:{
            membershipController *personSearchVC = [[membershipController alloc] init];
            //personSearchVC.edgesForExtendedLayout = UIRectEdgeTop;
            personSearchVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:personSearchVC animated:YES];
        }
            break;
//        case 2:
//            <#statements#>
//            break;
//        case 3:
//            <#statements#>
//            break;
//        case 4:
//            <#statements#>
//            break;
//        case 5:
//            <#statements#>
//            break;
//        case 6:
//            <#statements#>
//            break;
//        case 7:
//            <#statements#>
//            break;
            
        default:
            break;
    }
}

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
