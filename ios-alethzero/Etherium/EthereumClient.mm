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

- (void)startNetwork;
- (void)setClientVersion;

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

- (void)connectToPeerAddress:(NSString*)a_address atPort:(NSString*)a_port {
    uint16_t port = (uint16_t)[a_port integerValue];
    string address([a_address UTF8String]);
    client->connect(address, port);
}

#pragma mark - Private -

- (void)startNetwork {
}

- (void)setClientVersion {
//    string n = "iOS-AlethZero/v" ETH_QUOTED(ETH_VERSION);
//	if (ui->clientName->text().size())
//		n += "/" + ui->clientName->text().toStdString();
//	n +=  "/" ETH_QUOTED(ETH_BUILD_TYPE) "/" ETH_QUOTED(ETH_BUILD_PLATFORM);
}

@end
