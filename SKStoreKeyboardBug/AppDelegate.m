//
//  Created by Stefan Nebel on 18.08.20.
//  Copyright © 2020 Best-iOS-Apps. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

  ViewController *viewController = [[ViewController alloc] initWithNibName:nil bundle:nil];
  [viewController.view setBackgroundColor:[UIColor linkColor]];

  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  [self.window setRootViewController:viewController];
  [self.window makeKeyAndVisible];

  return YES;
}

@end
