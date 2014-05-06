//
//  AlethZeroNetworkTableViewController.h
//  ios-alethzero
//
//  Created by Troy Stribling on 4/28/14.
//  Copyright (c) 2014 gnos.us. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlethZeroNetworkTableViewController : UITableViewController <UIAlertViewDelegate>

@property(nonatomic, retain) IBOutlet UILabel*      peerAddressLabel;
@property(nonatomic, retain) IBOutlet UIButton*     peerConnectButton;

- (IBAction)connectToPeer;

@end
