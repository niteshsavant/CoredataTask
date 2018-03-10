//
//  EmployeeViewController.m
//  TabBarSirNSEntityTask
//
//  Created by Student P_02 on 29/01/18.
//  Copyright © 2018 Abhi. All rights reserved.
//

#import "EmployeeViewController.h"

@interface EmployeeViewController ()

@end

@implementation EmployeeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Employee Data Display";
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    AppDelegate *app = (AppDelegate *)[UIApplication sharedApplication].delegate;
    
    NSFetchRequest *fetch = [NSFetchRequest fetchRequestWithEntityName:@"EmployeeData"];
    
    NSManagedObjectContext *context = [app getContxtObjectfordisplay];
    
    arrofEmployeedata = [context executeFetchRequest:fetch error:nil];
    
    if (arrofEmployeedata.count > 0)
    {
        [_tblofEmployeeDetails reloadData];
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arrofEmployeedata.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    EmployeeViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EmployeeViewCell"];
    
    if (cell == nil)
    {
        cell = [[EmployeeViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"EmployeeViewCell"];
    }
    NSManagedObject *empObject = [arrofEmployeedata objectAtIndex:indexPath.row];
    cell.lblEmpName.text = [empObject valueForKey:@"empName"];
    cell.lblEmpAddress.text = [empObject valueForKey:@"empAddress"];
    cell.lblEmpCity.text = [empObject valueForKey:@"empCity"];
    
    cell.layer.borderWidth = 2;
    return cell;
}

@end
