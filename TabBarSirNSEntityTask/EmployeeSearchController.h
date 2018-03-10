//
//  EmployeeSearchController.h
//  TabBarSirNSEntityTask
//
//  Created by Student P_02 on 30/01/18.
//  Copyright © 2018 Abhi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EmployeeSearchViewCell.h"
#import "AppDelegate.h"

@interface EmployeeSearchController : UIViewController
{
    NSArray *arrofEmployeeSearch;
}
@property (weak, nonatomic) IBOutlet UITableView *tableofEmployeeDetails;
@property (weak, nonatomic) IBOutlet UITextField *txtEmployeeSearchkey;
- (IBAction)btnSearchEmployeeTable:(id)sender;



@end
