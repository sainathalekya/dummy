//
//  NonVegCurriesTableViewController.m
//  secondWife
//
//  Created by yogya naga vamsi on 21/12/17.
//  Copyright © 2017 yogya naga vamsi. All rights reserved.
//

#import "NonVegCurriesTableViewController.h"

@interface NonVegCurriesTableViewController ()

@end

@implementation NonVegCurriesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.nonVegCurryArr=[[NSMutableArray alloc]initWithObjects:@"EGG CURRY",@"EGG BURJI",@"CHICKEN CURRY",@"BUTTER CHICKEN",@"KADAI CHICKEN",@"CHICKEN CHATPAT",@"CHICKEN KALIMIRCHI",@"CHICKEN KOLAPURI",@"CHICKEN TIKKA MASALA",@"CHICKEN SHANGWALA",@"CHICKEN AFGANI",@"MUGALAI CHICKEN",@"CHICKEN DOPYAZA",@"MURG MAHARANI",@"PUNJABI CHICKEN",@"ANDHRA CHICKEN",@"NATUKODI CURRKADAI MUTTON",@"MUTTON KALI MIRCHI",@"MUTTON MUGHLAI",@"ACHARI MUTTON",@"MUTTON ROGAN JOSH",@"PRAWNS CURRY",@"KADAI PRAWANS",@"ACHARI PRAWNS",@"ANDHRA PRAWNS",@"NELLORE FISH CURRY",@"FISH MASALA",@"KADAI FISH",@"FISH CURRY", nil];
    self.nonVegCurryRatesArr=[[NSMutableArray alloc]initWithObjects:@"140",@"130",@"180",@"200",@"200",@"200",@"200",@"200",@"220",@"200",@"220",@"220",@"200",@"220",@"220",@"200",@"210",@"240",@"240",@"240",@"240",@"200",@"200",@"200",@"200",@"200",@"200",@"220",@"200", nil];
    
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
    return self.nonVegCurryArr.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"nonVegCurryCellIdentifier" forIndexPath:indexPath];
    
    if (cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"nonVegCurryCellIdentifier"];
    }
    
    cell.textLabel.text=[self.nonVegCurryArr objectAtIndex:indexPath.row];
    cell.detailTextLabel.text=[self.nonVegCurryRatesArr objectAtIndex:indexPath.row];
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
