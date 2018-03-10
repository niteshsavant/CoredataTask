//
//  CompanyDataView.m
//  TabBarSirNSEntityTask
//
//  Created by Student P_02 on 29/01/18.
//  Copyright © 2018 Abhi. All rights reserved.
//

#import "CompanyDataView.h"

@interface CompanyDataView ()

@end

@implementation CompanyDataView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
     self.title = @"Company Data Display";
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    AppDelegate *app = (AppDelegate *)[UIApplication sharedApplication].delegate;
    
    NSFetchRequest *fetch = [NSFetchRequest fetchRequestWithEntityName:@"CompanyData"];
    
    NSManagedObjectContext *context = [app getContxtObjectfordisplay];
    
    arrofCompanydata = [context executeFetchRequest:fetch error:nil];
    
    if (arrofCompanydata.count > 0)
    {
        [_tblofCompanyDetails reloadData];
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arrofCompanydata.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CompanyViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CompanyViewCell"];
    
    if (cell == nil)
    {
        cell = [[CompanyViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CompanyViewCell"];
    }
    NSManagedObject *companyObject = [arrofCompanydata objectAtIndex:indexPath.row];
    cell.lblCompanyName.text = [companyObject valueForKey:@"companyName"];
    cell.lblCompanyAddress.text = [companyObject valueForKey:@"companyAddress"];
    cell.lblCompanyCity.text = [companyObject valueForKey:@"companyCity"];
    
    cell.layer.borderWidth = 2;
    return cell;
}
@end
