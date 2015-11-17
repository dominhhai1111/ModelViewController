//
//  DataManager.h
//  ModelViewController
//
//  Created by Cuong Trinh on 9/8/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataManager : NSObject
@property (nonatomic, strong) NSArray* data;
+ (instancetype)getSingleton;
@end
