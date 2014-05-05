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

@interface AlethZeroNetworkTableViewController ()

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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (BOOL)textFieldShouldReturn:(UITextField*)textField {
    return YES;
}

#pragma mark - UIAlertViewDelegate -

- (void)alertView:(UIAlertView*)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex {
    [self.navigationController popViewControllerAnimated:YES];
}


@end
