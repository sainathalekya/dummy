//
//  VegCurriesTableViewController.m
//  secondWife
//
//  Created by yogya naga vamsi on 21/12/17.
//  Copyright © 2017 yogya naga vamsi. All rights reserved.
//

#import "VegCurriesTableViewController.h"

@interface VegCurriesTableViewController ()

@end

@implementation VegCurriesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.vegCurryArr=[[NSMutableArray alloc]initWithObjects:@"TOMATO CURRY",@"GOBI MASALA",@"ALOO GOBI MASALA",@"KADAI VEG",@"VEG CHAT PHAT",@"VEG KOFTA CURRY",@"MALAI KOFTA CURRY",@"VEG KOLAPURI",@"VEG JAIPURI",@"VEG KANDARI",@"VEG DOPYAZA",@"VEG NIJAMI HANDI",@"KAJU MASALA",@"GREEN PEAS MASALA",@"BABY CORN MASALA",@"MUSHROOM MASALA",@"VEG MAKHAN MASALA",@"PANEER BURJI",@"PALAR PANEER",@"PANEER BUTTER MASALA",@"KAJU PANEER BUTTER MASALA",@"KADAI PANEER",@"PANEER DOPYAZA",@"SAHI PANEER",@"SAHI PANEER KURMA",@"PANEER PASHINDA",@"PANEER CHATPAT",@"PANEER KALIMIRCH",@"PANNIR BUTTER MASALA", nil];
    self.vegCurryRatesArr=[[NSMutableArray alloc]initWithObjects:@"140",@"140",@"150",@"160",@"160",@"160",@"170",@"160",@"170",@"160",@"160",@"170",@"180",@"140",@"160",@"180",@"170",@"220",@"170",@"180",@"200",@"200",@"200",@"220",@"200",@"220",@"200",@"200",@"180", nil];
    
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
    return self.vegCurryArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"vegCurryCellIdentifier" forIndexPath:indexPath];
    
    if (cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"vegCurryCellIdentifier"];
    }
    
    cell.textLabel.text=[self.vegCurryArr objectAtIndex:indexPath.row];
    cell.detailTextLabel.text=[self.vegCurryRatesArr objectAtIndex:indexPath.row];
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
