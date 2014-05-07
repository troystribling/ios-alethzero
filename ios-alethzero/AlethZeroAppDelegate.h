//
//  AlethZeroAppDelegate.h
//  ios-alethzero
//
//  Created by Troy Stribling on 4/27/14.
//  Copyright (c) 2014 gnos.us. All rights reserved.
//

#import <UIKit/UIKit.h>

@class EthereumClient;

@interface AlethZeroAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) EthereumClient*   client;
@property (strong, nonatomic) UIWindow*         window;

+ (EthereumClient*)client;

@end
