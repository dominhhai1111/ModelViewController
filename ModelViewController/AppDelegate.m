//
//  AppDelegate.m
//  ModelViewController
//
//  Created by Cuong Trinh on 9/8/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import "AppDelegate.h"
#import "DataManager.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UITabBarController* tabBarController = (UITabBarController*) self.window.rootViewController;
    ((UITabBarItem*)tabBarController.tabBar.items[0]).selectedImage = [UIImage imageNamed:@"Poster"];
    ((UITabBarItem*)tabBarController.tabBar.items[1]).selectedImage = [UIImage imageNamed:@"Films"];
    
    DataManager* dataManager = [DataManager getSingleton];
    return YES;
}



@end
