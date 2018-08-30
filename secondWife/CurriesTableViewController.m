//
//  CurriesTableViewController.m
//  secondWife
//
//  Created by yogya naga vamsi on 21/12/17.
//  Copyright © 2017 yogya naga vamsi. All rights reserved.
//

#import "CurriesTableViewController.h"
#import "CurriesCell.h"
#import "NonVegCurriesTableViewController.h"
#import "VegCurriesTableViewController.h"

@interface CurriesTableViewController ()

@end

@implementation CurriesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.curriesArr=[[NSMutableArray alloc]initWithObjects:@"NON VEG CURRIES",@"VEG CURRIES", nil];
    
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
    return self.curriesArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CurriesCell *cell = [tableView dequeueReusableCellWithIdentifier:@"curriesCellIdentifier" forIndexPath:indexPath];
    if (cell
        == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"ExpandCollapseCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    cell.curriesNameLbl.text=[self.curriesArr objectAtIndex:indexPath.row];
    cell.curriesImageView.image=[UIImage imageNamed:[self.curriesArr objectAtIndex:indexPath.row ]];
    
    // Configure the cell...
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row==0)
    {
        NonVegCurriesTableViewController*NCTVC=[self.storyboard instantiateViewControllerWithIdentifier:@"nonVegCurryIdentifier"];
        
        [self.navigationController pushViewController:NCTVC animated:YES];
    }
    else if (indexPath.row==1)
    {
        VegCurriesTableViewController*VCTVC=[self.storyboard instantiateViewControllerWithIdentifier:@"vegCurryIdentifier"];
        
        [self.navigationController pushViewController:VCTVC animated:YES];
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
