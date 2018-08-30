//
//  RiceTableViewController.m
//  secondWife
//
//  Created by yogya naga vamsi on 21/12/17.
//  Copyright © 2017 yogya naga vamsi. All rights reserved.
//

#import "RiceTableViewController.h"

@interface RiceTableViewController ()

@end

@implementation RiceTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.riceItemsArr=[[NSMutableArray alloc]initWithObjects:@"VEG FRIED RICE",@"MIX VEG FRIED RICE",@"MUSHROOM FRIED RICE",@"PANEER FRIED RICE",@"BUD GARLIC FRIED RICE",@"CORN FRIED RICE",@"VEG SHEWAZAN FRIED RICE",@"EGG FRIED RICE",@"EGG SHEWAZAN FRIED RICE",@"MIX NON VEG FRIED RICE",@"CHICKEN FRIED RICE",@"MUTTON FRIED RICE",@"SHEWAZAN CHICKEN FRIED RICE",@"SHEWAZAN MUTTON FRIED RICE", nil];
    self.riceItemsRatesArr=[[NSMutableArray alloc]initWithObjects:@"120",@"150",@"160",@"170",@"160",@"130",@"150",@"140",@"150",@"180",@"150",@"180",@"180",@"200", nil];
    
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
    return self.riceItemsArr.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"riceCellIdentifier" forIndexPath:indexPath];
    
    if (cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:@"riceCellIdentifier"];
    }
    cell.textLabel.text=[self.riceItemsArr objectAtIndex:indexPath.row];
    cell.detailTextLabel.text=[self.riceItemsRatesArr objectAtIndex:indexPath.row];

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
