//
//  Created by Stefan Nebel on 18.08.20.
//  Copyright © 2020 Best-iOS-Apps. All rights reserved.
//

#import "ViewController.h"
@import StoreKit;

@interface ViewController () <SKStoreProductViewControllerDelegate>
@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated {
  [super viewDidAppear:animated];

  NSDictionary *parameters = @{
    SKStoreProductParameterITunesItemIdentifier: [[NSNumber alloc] initWithInt:1193010972]
  };

  SKStoreProductViewController *storeViewController = [[SKStoreProductViewController alloc] init];
  [storeViewController setDelegate:self];
  [storeViewController loadProductWithParameters:parameters completionBlock:^(BOOL result, NSError * _Nullable error) {
    if (result) [self presentViewController:storeViewController animated:true completion:nil];
    if (error) NSLog(@"%@", error.localizedDescription);
  }];
}

- (void)productViewControllerDidFinish:(SKStoreProductViewController *)viewController {
  [viewController dismissViewControllerAnimated:true completion:nil];
}

/*
 Console Output - click on "write a review" / textfield:
 SKStoreKeyboardBug[3735:727106] [ZOOMCommon] Got a keyboard will hide notification, but keyboard was not even present.
 SKStoreKeyboardBug[3735:727106] [ZOOMCommon] Got a keyboard did hide notification, but keyboard was not even present.
 */

@end
