//
//  CompanyViewController.h
//  TabBarSirNSEntityTask
//
//  Created by Student P_02 on 29/01/18.
//  Copyright © 2018 Abhi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "CompanyDataView.h"
#import "CompanySearchController.h"

@interface CompanyViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *txtCompName;
@property (weak, nonatomic) IBOutlet UITextField *txtCompAddress;
@property (weak, nonatomic) IBOutlet UITextField *txtCompCity;

- (IBAction)btnSaveCompanyData:(id)sender;

- (IBAction)btnListCompanyData:(id)sender;

- (IBAction)btnUpdateCompanyData:(id)sender;

@end
