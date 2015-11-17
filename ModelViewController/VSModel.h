//
//  VSModel.h
//  ModelViewController
//
//  Created by Cuong Trinh on 9/8/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface VSModel : NSObject
@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* measure;
@property (nonatomic, strong) UIImage* photo;
@property (nonatomic, strong) UIImage* icon;

- (instancetype) init: (NSString*) name
          withMeasure: (NSString*) measure
             andPhoto: (NSString*) photo;
@end
