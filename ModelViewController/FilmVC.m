//
//  BikiniVC.m
//  ModelViewController
//
//  Created by Cuong Trinh on 9/8/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import "FilmVC.h"
#import "DataManager.h"
#import "VSModel.h"
#import "DetailVC.h"
@interface BikiniVC ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation BikiniVC
{
    DataManager* dataManager;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    dataManager = [DataManager getSingleton];
    self.edgesForExtendedLayout=UIRectEdgeNone;
    self.extendedLayoutIncludesOpaqueBars=NO;
    self.automaticallyAdjustsScrollViewInsets=NO;

}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return dataManager.data.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    VSModel* model = dataManager.data[indexPath.row];
    cell.textLabel.text = model.name;
    cell.detailTextLabel.text = model.measure;
    cell.imageView.image = model.icon;
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    DetailVC* detailVC = (DetailVC*)segue.destinationViewController;
    
    NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
    detailVC.model = dataManager.data[selectedIndexPath.row];
    
}

@end
