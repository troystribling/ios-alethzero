//
//  AlethZeroPeerAddressTableViewController.m
//  ios-alethzero
//
//  Created by Troy Stribling on 5/5/14.
//  Copyright (c) 2014 gnos.us. All rights reserved.
//

#import "AlethZeroPeerAddressTableViewController.h"
#import "AlethZeroConfiguration.h"

@interface AlethZeroPeerAddressTableViewController ()

- (void)setAddressFromTextField:(UITextField*)a_textField;

@end

@implementation AlethZeroPeerAddressTableViewController

- (id)initWithStyle:(UITableViewStyle)style {
    self = [super initWithStyle:style];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad {
    self.peerAddressTextField.text = [AlethZeroConfiguration getPeerAddress];
    self.peerAddressPortTextField.text = [AlethZeroConfiguration getPeerAddressPort];
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Private -

- (void)setAddressFromTextField:(UITextField*)a_textField {
    NSString* value = a_textField.text;
    if (a_textField.tag == 1) {
        [AlethZeroConfiguration savePeerAddress:value];
    } else {
        [AlethZeroConfiguration savePeerAddressPort:value];
    }
}

#pragma mark - UITextFieldDelegate -

- (BOOL)textFieldShouldReturn:(UITextField*)textField {
    [textField resignFirstResponder];
    [self.navigationController popViewControllerAnimated:YES];
    return YES;
}

- (BOOL)textFieldShouldEndEditing:(UITextField*)textField {
    [self setAddressFromTextField:textField];
    return YES;
}

@end
