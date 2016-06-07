//
//  Person.h
//  KVOTestDemo
//
//  Created by dev on 6/7/16.
//  Copyright © 2016 zfx5130. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Account.h"

@interface Person : NSObject

@property (strong, nonatomic) Account *account;
@property (strong, nonatomic) NSString *name;

@end
