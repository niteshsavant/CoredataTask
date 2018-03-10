//
//  EmployeeSearchController.m
//  TabBarSirNSEntityTask
//
//  Created by Student P_02 on 30/01/18.
//  Copyright © 2018 Abhi. All rights reserved.
//

#import "EmployeeSearchController.h"

@interface EmployeeSearchController ()

@end

@implementation EmployeeSearchController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Employee Search";
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
    
    arrofEmployeeSearch = [context executeFetchRequest:fetch error:nil];
    
    if (arrofEmployeeSearch.count > 0)
    {
        [_tableofEmployeeDetails reloadData];
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arrofEmployeeSearch.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    EmployeeSearchViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EmployeeSearchViewCell"];
    
    if (cell == nil)
    {
        cell = [[EmployeeSearchViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"EmployeeSearchViewCell"];
    }
    NSManagedObject *empObject = [arrofEmployeeSearch objectAtIndex:indexPath.row];
    cell.lblEmployeeName.text = [empObject valueForKey:@"empName"];
    cell.lblEmployeeAddress.text = [empObject valueForKey:@"empAddress"];
    cell.lblEmployeeCity.text = [empObject valueForKey:@"empCity"];
    
    cell.layer.borderWidth = 2;
    return cell;
}


- (IBAction)btnSearchEmployeeTable:(id)sender
{
    AppDelegate *appdelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    
    NSFetchRequest *fetch = [NSFetchRequest fetchRequestWithEntityName:@"EmployeeData"];
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:[NSString stringWithFormat:@"empName like '%@'",_txtEmployeeSearchkey.text]];
    
    fetch.predicate = predicate;
    
    NSManagedObjectContext *context = [appdelegate getContxtObjectfordisplay];
    
    arrofEmployeeSearch = [context executeFetchRequest:fetch error:nil];
    
    if (arrofEmployeeSearch.count > 0)
    {
        [_tableofEmployeeDetails reloadData];
    }
}
@end
