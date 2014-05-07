//
//  EthereumClient.mm
//
//  Created by Troy Stribling on 5/3/14.
//  Copyright (c) 2014 gnos.us. All rights reserved.
//

#import "EthereumClient.h"
#import <ethereum/Client.h>

@interface EthereumClient () {
    std::unique_ptr<eth::Client>    client;
}

@end

@implementation EthereumClient

+ (id)createWithName:(NSString*)a_name {
    return [[self alloc] initWithName:a_name];
}

- (id)initWithName:(NSString*)a_name {
    self = [super init];
    if (self) {
        client.reset(new eth::Client(std::string([a_name UTF8String])));
    }
    return self;
}

- (void)connectToPeerAddress:(NSString*)a_address atPort:(NSString*)a_port {
    uint16_t port = (uint16_t)[a_port integerValue];
    std::string address([a_address UTF8String]);
    client->connect(address, port);
}

@end
