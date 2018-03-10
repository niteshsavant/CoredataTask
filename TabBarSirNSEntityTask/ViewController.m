//
//  ViewController.m
//  TabBarSirNSEntityTask
//
//  Created by Student P_02 on 29/01/18.
//  Copyright © 2018 Abhi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnSaveEmpData:(id)sender
{
    if ([_txtEmpName.text isEqualToString:@""])
    {
        
    }
    else if ([_txtEmpAddress.text isEqualToString:@""])
    {
    
    }
    else if ([_txtEmpCity.text isEqualToString:@""])
    {
    
    }
    else
    {
    AppDelegate *appdelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"EmployeeData" inManagedObjectContext:[appdelegate getContxtObjectfordisplay]];
    
    NSManagedObject *managedObject = [[NSManagedObject alloc]initWithEntity:entity insertIntoManagedObjectContext:[appdelegate getContxtObjectfordisplay]];
    
    [managedObject setValue:_txtEmpName.text forKey:@"empName"];
    [managedObject setValue:_txtEmpAddress.text forKey:@"empAddress"];
    [managedObject setValue:_txtEmpCity.text forKey:@"empCity"];
    
    NSManagedObjectContext *context = [appdelegate getContxtObjectfordisplay];
    
    NSError *error;
    [context save:&error];
    if (error != nil)
    {
        NSLog(@"Failed to inert");
    }
    else
    {
        NSLog(@"Success");
    }
    }
}

- (IBAction)btnListEmpData:(id)sender
{
    EmployeeViewController *emp = [self.storyboard instantiateViewControllerWithIdentifier:@"EmployeeViewController"];
    
    [self.navigationController pushViewController:emp animated:YES];
}

- (IBAction)btnUpdateEmpData:(id)sender
{
    EmployeeSearchController *emp = [self.storyboard instantiateViewControllerWithIdentifier:@"EmployeeSearchController"];
    
    [self.navigationController pushViewController:emp animated:YES];
}
@end
