//
//  CompanySearchController.h
//  TabBarSirNSEntityTask
//
//  Created by Student P_02 on 30/01/18.
//  Copyright © 2018 Abhi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "ComapnySearchViewCell.h"

@interface CompanySearchController : UIViewController
{
    NSArray *arrofCompanySearch;
}
@property (weak, nonatomic) IBOutlet UITableView *tableCompanySearch;

@property (weak, nonatomic) IBOutlet UITextField *txtSearchCompanykey;
- (IBAction)btnSearchCompanyTable:(id)sender;


@end
