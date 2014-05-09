//
//  EthereumClient.mm
//
//  Created by Troy Stribling on 5/3/14.
//  Copyright (c) 2014 gnos.us. All rights reserved.
//

#import "EthereumClient.h"
#import <ethereum/Client.h>

using namespace std;
using namespace eth;

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
        client.reset(new Client(std::string([a_name UTF8String])));
    }
    return self;
}

#pragma mark - Manage Network -

- (void)connectToPeerAddress:(NSString*)a_address atPort:(NSString*)a_port {
    if (!client->haveNetwork()) {
        uint16_t port = (uint16_t)[a_port integerValue];
        string address([a_address UTF8String]);
        client->startNetwork(port, string(), 0, NodeMode::Full, 5, string(), true);
        client->connect(address, port);
    }
}

- (BOOL)connected {
    BOOL status = NO;
    if (client->haveNetwork()) {
        status = YES;
    }
    return status;
}

- (void)disconnect {
    if (client->haveNetwork()) {
        client->stopNetwork();
    }
}

#pragma mark - Private -

@end
