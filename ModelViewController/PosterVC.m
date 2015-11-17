//
//  BraVC.m
//  ModelViewController
//
//  Created by Cuong Trinh on 9/8/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import "PosterVC.h"
#import "DataManager.h"
#import "VSModel.h"
@interface BraVC () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;
@property (weak, nonatomic) IBOutlet UILabel *modelLabel;

@end

@implementation BraVC
{
    DataManager* dataManager;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    dataManager = [DataManager getSingleton];
    self.pageControl.numberOfPages = dataManager.data.count;
   // CGSize scrollViewSize = self.scrollView.bounds.size;
    CGSize scrollViewSize = CGSizeMake(self.view.bounds.size.width, self.scrollView.bounds.size.height);
    self.scrollView.contentSize = CGSizeMake(scrollViewSize.width * dataManager.data.count, scrollViewSize.height);
    int i = 0;
    for (VSModel* model in dataManager.data) {
        UIImageView* imageView = [[UIImageView alloc] initWithImage:model.photo];
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        imageView.frame = CGRectMake(i * scrollViewSize.width, 40, scrollViewSize.width, scrollViewSize.height);
        [self.scrollView addSubview:imageView];
        i++;
    }
    
}

- (void) viewDidAppear:(BOOL)animated {
    [self updateLabelAt:0];
}


#pragma mark - UIScrollViewDelegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    self.pageControl.currentPage = self.scrollView.contentOffset.x / self.scrollView.bounds.size.width;
    [self updateLabelAt:(int)self.pageControl.currentPage];
}

- (void) updateLabelAt: (int) index {
    VSModel* model = dataManager.data[index];
    self.modelLabel.text = [NSString stringWithFormat:@"%@\n%@", model.name, model.measure];
    CGSize labelSize = [self.modelLabel.text sizeWithAttributes:@{NSFontAttributeName:self.modelLabel.font}];
    
    self.modelLabel.frame = CGRectMake(
                                       self.modelLabel.frame.origin.x, self.modelLabel.frame.origin.y,
                                       self.modelLabel.frame.size.width, labelSize.height);

}
@end
