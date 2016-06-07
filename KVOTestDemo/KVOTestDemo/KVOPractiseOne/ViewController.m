//
//  ViewController.m
//  KVOTestDemo
//
//  Created by dev on 6/7/16.
//  Copyright © 2016 zfx5130. All rights reserved.
//

#import "ViewController.h"

#import "Account.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupPerson];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Private

- (void)setupPerson {
    
    Person *person = [[Person alloc] init];
    Account *account = [[Account alloc] init];
    account.blance = 10000.0f;
    person.name = @"张三";
    person.account = account;
    //KVO.blance变动时调用监听。
    account.blance = 10000000.0f;
    
}

@end
