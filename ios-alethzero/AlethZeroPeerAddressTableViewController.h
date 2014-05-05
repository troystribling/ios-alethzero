//
//  AlethZeroPeerAddressTableViewController.h
//  ios-alethzero
//
//  Created by Troy Stribling on 5/5/14.
//  Copyright (c) 2014 gnos.us. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlethZeroPeerAddressTableViewController : UITableViewController <UITextFieldDelegate, UIAlertViewDelegate>

@property(nonatomic, retain) IBOutlet UITextField*      peerAddressTextField;
@property(nonatomic, retain) IBOutlet UITextField*      peerAddressPortTextField;

@end
