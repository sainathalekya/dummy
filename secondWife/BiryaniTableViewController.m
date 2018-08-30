//
//  BiryaniTableViewController.m
//  secondWife
//
//  Created by yogya naga vamsi on 07/12/17.
//  Copyright © 2017 yogya naga vamsi. All rights reserved.
//

#import "BiryaniTableViewController.h"
#import "NonVegBiryaniViewController.h"
#import "VegBiryaniViewController.h"
#import "BiryaniCustomCell.h"

@interface BiryaniTableViewController ()

@end

@implementation BiryaniTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.biryaniArr=[[NSMutableArray alloc]initWithObjects:@"NON-VEG Biryani",@"VEG Biryani", nil];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _biryaniArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    BiryaniCustomCell *cell1=[tableView dequeueReusableCellWithIdentifier:@"biryaniIdentifier" ];
    if (cell1
        == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"ExpandCollapseCell" owner:self options:nil];
        cell1 = [nib objectAtIndex:0];
    }
    cell1.label1.text=[self.biryaniArr objectAtIndex:indexPath.row];
    cell1.imageView1.image=[UIImage imageNamed:[self.biryaniArr objectAtIndex:indexPath.row ]];
 
    return cell1;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row==0)
    {
        NonVegBiryaniViewController*NBVC=[self.storyboard instantiateViewControllerWithIdentifier:@"NVBiryani"];
        
        [self.navigationController pushViewController:NBVC animated:YES];
    }
    
    if (indexPath.row==1)
    {
        VegBiryaniViewController*VBVC=[self.storyboard instantiateViewControllerWithIdentifier:@"vegBiryani"];
        
        [self.navigationController pushViewController:VBVC animated:YES];
    }

    
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
