//
//  Person.m
//  KVOTestDemo
//
//  Created by dev on 6/7/16.
//  Copyright © 2016 zfx5130. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)setAccount:(Account *)account {
    _account = account;
    [self addObserver];
}

- (void)addObserver {
    [self.account addObserver:self
                   forKeyPath:@"blance"
                      options:NSKeyValueObservingOptionNew
                      context:nil];
}

- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary<NSString *,id> *)change
                       context:(void *)context {
    
    if ([keyPath isEqualToString:@"blance"]) {
        NSLog(@"KVO Test");
        CGFloat balance = [[self.account valueForKey:keyPath] doubleValue];
        NSLog(@"blance:%@", @(balance));
    }
    
}

- (void)dealloc {
    [self.account removeObserver:self
                      forKeyPath:@"blance"];
}

@end
