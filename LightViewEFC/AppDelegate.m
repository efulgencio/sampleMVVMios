//
//  AppDelegate.m
//  LightViewEFC
//
//  Created by eduardo fulgencio on 6/1/16.
//  Copyright © 2016 eduardo fulgencio. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "Handler.h"
#import "Storage.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    self.window.rootViewController = [self viewController];
    
    [self.window makeKeyAndVisible];

    return YES;

}

// En lugar de login pues la pantalla inicial

- (ViewController *)viewController
{
    
   // ViewController *viewController = [[ViewController alloc] init];
    
    Handler *handler = [[Handler alloc] init];
    Storage *storage = [[Storage alloc] init];
    
    ViewController *viewController = [[ViewController alloc] initWithHandler:handler storage:storage];

    
    return viewController;
    
}



@end
