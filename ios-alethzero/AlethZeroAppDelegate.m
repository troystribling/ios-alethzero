//
//  AlethZeroAppDelegate.m
//  ios-alethzero
//
//  Created by Troy Stribling on 4/27/14.
//  Copyright (c) 2014 gnos.us. All rights reserved.
//

#import "AlethZeroAppDelegate.h"
#import "EthereumClient.h"

@implementation AlethZeroAppDelegate

+ (EthereumClient*)client {
    AlethZeroAppDelegate* appDelegate = [[UIApplication sharedApplication] delegate];
    return appDelegate.client;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSString* clientVersion = [NSString stringWithFormat:@"iOS-Alethzero/%@/iOS/clang++", @"0.5.1"];
    self.client = [EthereumClient createWithName:clientVersion];
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

@end
