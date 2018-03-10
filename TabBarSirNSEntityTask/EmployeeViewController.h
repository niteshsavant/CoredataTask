//
//  EmployeeViewController.h
//  TabBarSirNSEntityTask
//
//  Created by Student P_02 on 29/01/18.
//  Copyright © 2018 Abhi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EmployeeViewCell.h"
#import "AppDelegate.h"

@interface EmployeeViewController : UIViewController
{
    NSArray *arrofEmployeedata;
}
@property (weak, nonatomic) IBOutlet UITableView *tblofEmployeeDetails;

@end
