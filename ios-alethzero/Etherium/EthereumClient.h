//
//  EthereumClient.h
//  ios-alethzero
//
//  Created by Troy Stribling on 5/3/14.
//  Copyright (c) 2014 gnos.us. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EthereumClient : NSObject

+ (id)createWithName:(NSString*)a_name;
- (id)initWithName:(NSString*)a_name;

- (void)connectToPeerAddress:(NSString*)a_address atPort:(NSString*)a_port;
- (void)disconnect;

@end
