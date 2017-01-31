//
//  CustomTableViewCellTableViewController.m
//  lunbo
//
//  Created by zhangle on 17/1/15.
//  Copyright © 2017年 yunva. All rights reserved.
//

#import "CustomTableViewCellTableViewController.h"
#import "Cell.h"

static NSString *ZCellID = @"Cell";
@interface CustomTableViewCellTableViewController ()

@end

@implementation CustomTableViewCellTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //注册可重用机制
    [self.tableView registerClass:[Cell class] forCellReuseIdentifier:ZCellID];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ZCellID forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
/*
 *AFNetWorking下载数据并解析
 *
 */
//AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
//[_manager GET:_detailsURL parameters:nil success:^(AFHTTPRequestOperation *operation, ONOXMLDocument *responseDocument) {
//    NSString *response = [[NSString alloc] initWithData:operation.responseData encoding:NSUTF8StringEncoding];
//    TBXML *XML = [[TBXML alloc]initWithXMLString:response error:nil];
//    ONOXMLElement *onoXML = [responseDocument.rootElement firstChildWithTag:_tag];
//    if (!onoXML || onoXML.children.count <= 0) {
//        [self.navigationController popViewControllerAnimated:YES];
//    } else {
//        id details;
//        if ([_tag isEqualToString:@"blog"] || [_tag isEqualToString:@"post"]) {     //tbxml
//            TBXMLElement *element = XML.rootXMLElement;
//            TBXMLElement *subElement = [TBXML childElementNamed:_tag parentElement:element];
//            details = [[_detailsClass alloc] initWithTBXMLElement:subElement];
//        } else {     //onoxml
//            ONOXMLElement *XML = [responseDocument.rootElement firstChildWithTag:_tag];
//            details = [[_detailsClass alloc] initWithXML:XML];
//            //新接口软件详情评论
//            if([_tag isEqualToString:@"software"]) {
//                _softwareName = ((OSCSoftwareDetails*)details).title;
//            }
//        }
//        
//        [self performSelector:_loadMethod withObject:details];
//        
//        self.operationBar.isStarred = _isStarred;
//        
//        UIBarButtonItem *commentsCountButton = self.operationBar.items[4];
//        commentsCountButton.shouldHideBadgeAtZero = YES;
//        commentsCountButton.badgeValue = [NSString stringWithFormat:@"%i", _commentCount];
//        commentsCountButton.badgePadding = 1;
//        commentsCountButton.badgeBGColor = [UIColor colorWithHex:0x24a83d];
//        
//        if (_commentType == CommentTypeSoftware) {_objectID = ((OSCSoftwareDetails *)details).softwareID;}
//        
//        [self setBlockForOperationBar];
//    }
//    
//} failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//    NSLog(@"error:%@",error);
//}];


/****POST请求******/
//AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
//NSDictionary *parameters = @{@"foo": @"bar"};
//[manager POST:@"http://example.com/resources.json" parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
//    NSLog(@"JSON: %@", responseObject);
//} failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//    NSLog(@"Error: %@", error);
//}];
//self.operationBar.toggleStar = ^ {
//    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager OSCManager];
//    
//    NSString *API = weakSelf.isStarred? OSCAPI_FAVORITE_DELETE: OSCAPI_FAVORITE_ADD;
//    [manager POST:[NSString stringWithFormat:@"%@%@", OSCAPI_PREFIX, API]
//       parameters:@{
//                    @"uid":   @([Config getOwnID]),
//                    @"objid": @(weakSelf.activityID),
//                    @"type":  @(2)
//                    }
//          success:^(AFHTTPRequestOperation *operation, ONOXMLDocument *responseObject) {
//              ONOXMLElement *result = [responseObject.rootElement firstChildWithTag:@"result"];
//              int errorCode = [[[result firstChildWithTag:@"errorCode"] numberValue] intValue];
//              NSString *errorMessage = [[result firstChildWithTag:@"errorMessage"] stringValue];
//              
//              MBProgressHUD *HUD = [Utils createHUD];
//              HUD.mode = MBProgressHUDModeCustomView;
//              
//              if (errorCode == 1) {
//                  HUD.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"HUD-done"]];
//                  HUD.label.text = weakSelf.isStarred? @"删除收藏成功": @"添加收藏成功";
//                  weakSelf.isStarred = !weakSelf.isStarred;
//                  weakSelf.operationBar.isStarred = weakSelf.isStarred;
//              } else {
//                  //                      HUD.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"HUD-error"]];
//                  HUD.label.text = [NSString stringWithFormat:@"错误：%@", errorMessage];
//              }
//              
//              [HUD hideAnimated:YES afterDelay:1];
//          } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//              MBProgressHUD *HUD = [Utils createHUD];
//              HUD.mode = MBProgressHUDModeCustomView;
//              //                  HUD.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"HUD-error"]];
//              HUD.label.text = @"网络异常，操作失败";
//              
//              [HUD hideAnimated:YES afterDelay:1];
//          }];
//};
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
