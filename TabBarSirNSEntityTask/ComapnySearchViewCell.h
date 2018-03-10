//
//  ComapnySearchViewCell.h
//  TabBarSirNSEntityTask
//
//  Created by Student P_02 on 30/01/18.
//  Copyright © 2018 Abhi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface ComapnySearchViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lblCompanyName;
@property (weak, nonatomic) IBOutlet UILabel *lblCompanyAddress;
@property (weak, nonatomic) IBOutlet UILabel *lblCompanyCity;

@end
