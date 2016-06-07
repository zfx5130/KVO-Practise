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
<UITableViewDelegate,
UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupPerson];
    
    [self addTableViewContentOffObserver];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)dealloc {
    [self.tableView removeObserver:self
                        forKeyPath:@"contentOffset"];
}


#pragma mark - Private

- (void)addTableViewContentOffObserver {
    [self.tableView addObserver:self
                     forKeyPath:@"contentOffset"
                        options:NSKeyValueObservingOptionNew
                        context:nil];
}


- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary<NSString *,id> *)change
                       context:(void *)context {
    if ([keyPath isEqualToString:@"contentOffset"]) {
        CGPoint offset = [[self.tableView valueForKey:keyPath] CGPointValue];
        NSLog(@":::%@", NSStringFromCGPoint(offset));
    }
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    return 20;
}


- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = @"test";
    return cell;
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
