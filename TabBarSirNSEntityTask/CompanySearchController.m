//
//  CompanySearchController.m
//  TabBarSirNSEntityTask
//
//  Created by Student P_02 on 30/01/18.
//  Copyright © 2018 Abhi. All rights reserved.
//

#import "CompanySearchController.h"

@interface CompanySearchController ()

@end

@implementation CompanySearchController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Company Search";
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    AppDelegate *app = (AppDelegate *)[UIApplication sharedApplication].delegate;
    
    NSFetchRequest *fetch = [NSFetchRequest fetchRequestWithEntityName:@"CompanyData"];
    
    NSManagedObjectContext *context = [app getContxtObjectfordisplay];
    
    arrofCompanySearch = [context executeFetchRequest:fetch error:nil];
    
    if (arrofCompanySearch.count > 0)
    {
        [_tableCompanySearch reloadData];
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arrofCompanySearch.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ComapnySearchViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ComapnySearchViewCell"];
    
    if (cell == nil)
    {
        cell = [[ComapnySearchViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ComapnySearchViewCell"];
    }
    NSManagedObject *companyObject = [arrofCompanySearch objectAtIndex:indexPath.row];
    cell.lblCompanyName.text = [companyObject valueForKey:@"companyName"];
    cell.lblCompanyAddress.text = [companyObject valueForKey:@"companyAddress"];
    cell.lblCompanyCity.text = [companyObject valueForKey:@"companyCity"];
    
    cell.layer.borderWidth = 2;
    return cell;
}


- (IBAction)btnSearchCompanyTable:(id)sender
{
    AppDelegate *appdelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    
    NSFetchRequest *fetch = [NSFetchRequest fetchRequestWithEntityName:@"CompanyData"];
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:[NSString stringWithFormat:@"companyName like '%@'",_txtSearchCompanykey.text]];
    
    fetch.predicate = predicate;
    
    NSManagedObjectContext *context = [appdelegate getContxtObjectfordisplay];
    
    arrofCompanySearch = [context executeFetchRequest:fetch error:nil];
    
    if (arrofCompanySearch.count > 0)
    {
        [_tableCompanySearch reloadData];
    }

}
@end
