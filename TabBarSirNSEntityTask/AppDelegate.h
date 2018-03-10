//
//  AppDelegate.h
//  TabBarSirNSEntityTask
//
//  Created by Student P_02 on 29/01/18.
//  Copyright © 2018 Abhi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;

-(NSManagedObjectContext *) getContxtObjectfordisplay;


@end

