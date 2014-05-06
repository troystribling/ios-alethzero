//
//  AlethZeroConfiguration.h
//  ios-alethzero
//
//  Created by Troy Stribling on 5/5/14.
//  Copyright (c) 2014 gnos.us. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AlethZeroConfiguration : NSObject

+ (void)savePeerAddress:(NSString*)a_address andPort:(NSString*)a_port;
+ (void)savePeerAddress:(NSString*)a_address;
+ (void)savePeerAddressPort:(NSString*)a_address;
+ (NSString*)getPeerAddress;
+ (NSString*)getPeerAddressPort;

@end
