//
//  VSModel.m
//  ModelViewController
//
//  Created by Cuong Trinh on 9/8/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import "VSModel.h"

@implementation VSModel
- (instancetype) init: (NSString*) name
          withMeasure: (NSString*) measure
             andPhoto: (NSString*) photo {
    if (self = [super init]) {
        self.name = name;
        self.measure = measure;
        NSString* photoFile = [NSString stringWithFormat:@"%@.jpg", photo];
        self.photo = [UIImage imageNamed:photoFile];
        
        NSString* iconFile = [NSString stringWithFormat:@"%@.jpg", photo];
        self.icon = [UIImage imageNamed:iconFile];
    }
    return self;
}
@end
