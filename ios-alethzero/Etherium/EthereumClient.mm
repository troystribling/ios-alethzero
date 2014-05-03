//
//  EthereumClient.mm
//
//  Created by Troy Stribling on 5/3/14.
//  Copyright (c) 2014 gnos.us. All rights reserved.
//

#import "EthereumClient.h"
#import <ethereum/Client.h>

@interface EthereumClient ()
@end

@implementation EthereumClient

std::unique_ptr<eth::Client>    client;

@end
