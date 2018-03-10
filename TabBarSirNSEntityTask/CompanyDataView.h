//
//  CompanyDataView.h
//  TabBarSirNSEntityTask
//
//  Created by Student P_02 on 29/01/18.
//  Copyright © 2018 Abhi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CompanyViewCell.h"
#import "AppDelegate.h"

@interface CompanyDataView : UIViewController
{
    NSArray *arrofCompanydata;
}

@property (weak, nonatomic) IBOutlet UITableView *tblofCompanyDetails;


@end
