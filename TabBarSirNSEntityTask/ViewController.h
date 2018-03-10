//
//  ViewController.h
//  TabBarSirNSEntityTask
//
//  Created by Student P_02 on 29/01/18.
//  Copyright © 2018 Abhi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "EmployeeViewController.h"
#import "EmployeeSearchController.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *txtEmpName;
@property (weak, nonatomic) IBOutlet UITextField *txtEmpAddress;

@property (weak, nonatomic) IBOutlet UITextField *txtEmpCity;

- (IBAction)btnSaveEmpData:(id)sender;
- (IBAction)btnListEmpData:(id)sender;
- (IBAction)btnUpdateEmpData:(id)sender;



@end

