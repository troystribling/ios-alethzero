//
//  AlethZeroNetworkTableViewController.m
//  ios-alethzero
//
//  Created by Troy Stribling on 4/28/14.
//  Copyright (c) 2014 gnos.us. All rights reserved.
//

#import "AlethZeroNetworkTableViewController.h"
#import "UIAlertView+Extensions.h"
#import "ProgressView.h"
#import "AlethZeroConfiguration.h"
#import "DebugLog.h"

@interface AlethZeroNetworkTableViewController ()

- (void)enableConnectionButton;
- (void)setConnectionButtonLabel;
- (void)setPeerAddress;

@end

@implementation AlethZeroNetworkTableViewController

- (id)initWithStyle:(UITableViewStyle)style {
    self = [super initWithStyle:style];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    [self enableConnectionButton];
    [self setPeerAddress];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)connectToPeer {
    NSString* address = [AlethZeroConfiguration getPeerAddress];
    NSString* port = [AlethZeroConfiguration getPeerAddressPort];
    DLog(@"Connecting to %@:%@", address, port);
}

#pragma mark - Private -

- (void)enableConnectionButton {
    if ([AlethZeroConfiguration getPeerAddress] != NULL) {
        self.peerConnectButton.enabled = YES;
        [self setConnectionButtonLabel];
    } else {
        self.peerConnectButton.enabled = NO;
        [self.peerConnectButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    }
}

- (void)setConnectionButtonLabel {
    NSString* address = [AlethZeroConfiguration getPeerAddress];
    NSString* port = [AlethZeroConfiguration getPeerAddressPort];
}

- (void)setPeerAddress {
    NSString* peerAddress = [AlethZeroConfiguration getPeerAddress];
    if (peerAddress != NULL) {
        NSString* peerAddressPort = [AlethZeroConfiguration getPeerAddressPort];
        self.peerAddressLabel.text = [NSString stringWithFormat:@"%@:%@", peerAddress, peerAddressPort];
    } else {
        self.peerAddressLabel.text = @"None";
    }
}

#pragma mark - UIAlertViewDelegate -

- (void)alertView:(UIAlertView*)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex {
    [self.navigationController popViewControllerAnimated:YES];
}


@end
