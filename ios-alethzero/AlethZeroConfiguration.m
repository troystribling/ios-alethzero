//
//  Configuration.m
//  ios-alethzero
//
//  Created by Troy Stribling on 5/5/14.
//  Copyright (c) 2014 gnos.us. All rights reserved.
//

#import "AlethZeroConfiguration.h"

@implementation AlethZeroConfiguration

+ (void)savePeerAddress:(NSString*)a_address andPort:(NSString*)a_port {
    NSUserDefaults* standardDefaults = [NSUserDefaults standardUserDefaults];
    [standardDefaults setObject:a_address forKey:@"peerAddress"];
    [standardDefaults setObject:a_port forKey:@"peerAddressPort"];
}

+ (void)savePeerAddress:(NSString*)a_address {
    NSUserDefaults* standardDefaults = [NSUserDefaults standardUserDefaults];
    [standardDefaults setObject:a_address forKey:@"peerAddress"];
}

+ (void)savePeerAddressPort:(NSString*)a_port {
    NSUserDefaults* standardDefaults = [NSUserDefaults standardUserDefaults];
    [standardDefaults setObject:a_port forKey:@"peerAddressPort"];
}

+ (NSString*)getPeerAddress {
    NSUserDefaults* standardDefaults = [NSUserDefaults standardUserDefaults];
    return [standardDefaults objectForKey:@"peerAddress"];
}

+ (NSString*)getPeerAddressPort {
    NSUserDefaults* standardDefaults = [NSUserDefaults standardUserDefaults];
    return [standardDefaults objectForKey:@"peerAddressPort"];
}

@end
