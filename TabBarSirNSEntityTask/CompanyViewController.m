//
//  CompanyViewController.m
//  TabBarSirNSEntityTask
//
//  Created by Student P_02 on 29/01/18.
//  Copyright © 2018 Abhi. All rights reserved.
//

#import "CompanyViewController.h"

@interface CompanyViewController ()

@end

@implementation CompanyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnSaveCompanyData:(id)sender
{
    if ([_txtCompName.text isEqualToString:@""])
    {
        
    }
    else if ([_txtCompAddress.text isEqualToString:@""])
    {
        
    }
    else if ([_txtCompCity.text isEqualToString:@""])
    {
        
    }
    else
    {
        AppDelegate *appdelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
        
        NSEntityDescription *entity = [NSEntityDescription entityForName:@"CompanyData" inManagedObjectContext:[appdelegate getContxtObjectfordisplay]];
        
        NSManagedObject *managedObject = [[NSManagedObject alloc]initWithEntity:entity insertIntoManagedObjectContext:[appdelegate getContxtObjectfordisplay]];
        
        [managedObject setValue:_txtCompName.text forKey:@"companyName"];
        [managedObject setValue:_txtCompAddress.text forKey:@"companyAddress"];
        [managedObject setValue:_txtCompCity.text forKey:@"companyCity"];
        
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

- (IBAction)btnListCompanyData:(id)sender
{
    CompanyDataView *cmp = [self.storyboard instantiateViewControllerWithIdentifier:@"CompanyDataView"];
    
    [self.navigationController pushViewController:cmp animated:YES];
}

- (IBAction)btnUpdateCompanyData:(id)sender
{
    CompanySearchController *cmp = [self.storyboard instantiateViewControllerWithIdentifier:@"CompanySearchController"];
    
    [self.navigationController pushViewController:cmp animated:YES];
}
@end
