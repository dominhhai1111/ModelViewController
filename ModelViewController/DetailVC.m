//
//  DetaiVC.m
//  ModelViewController
//
//  Created by Cuong Trinh on 9/10/15.
//  Copyright © 2015 Cuong Trinh. All rights reserved.
//

#import "DetailVC.h"

@interface DetailVC ()
@property (weak, nonatomic) IBOutlet UIImageView *photo;
@property (weak, nonatomic) IBOutlet UILabel *information;

@end

@implementation DetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.photo.image = self.model.photo;
    self.information.text = self.model.name;
}
- (void)viewDidAppear:(BOOL)animated {
    
}
- (IBAction)onTapToPhoto:(UITapGestureRecognizer *)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

@end
