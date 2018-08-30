//
//  StarterTableViewController.m
//  secondWife
//
//  Created by yogya naga vamsi on 11/12/17.
//  Copyright © 2017 yogya naga vamsi. All rights reserved.
//

#import "StarterTableViewController.h"

@interface StarterTableViewController ()

@end

@implementation StarterTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.vegstarterArr=[[NSMutableArray alloc]initWithObjects:@"VEG MANCHURIA",@"VEG CHILLI",@"VEG 65",@"ALU 65",@"GOBI MANCHURIA",@"GOBI 65",@"CHILLI GOBI",@"CHILLI PANIR",@"ACHARI PANIR TIKKA",@"CHILLI BABY CORN",@"BABY CORN 65",@"MUSHROOM 65",@"CHILLI MUSHROOM",@"CHILLI VEG",@"CRISPY VEG",@"PANEER MAJESTIC",@"PEPPER MUSHROOM", nil];
    
    self.vegstarterRatesArr=[[NSMutableArray alloc]initWithObjects:@"140",@"140",@"140",@"140",@"140",@"120",@"120",@"170",@"200",@"170",@"170",@"170",@"170",@"160",@"160",@"180",@"200", nil];
    
    self.nonVegStarterArr=[[NSMutableArray alloc]initWithObjects:@"CHICKEN MANCHURIA",@"CHICKEN 65",@"SCHEZWAN CHICKEN",@"SESMI CHICKEN",@"CHICKEN ROAST",@"ACHARI CHICKEN TIKKA",@"MURGMALAI TIKKA",@"CHICKEN LOLLYPOP",@"CHICKEN MAJESTIC",@"CHILLI CHICKEN",@"PEPPER CHICKEN",@"PEPPER LEMON CHICKEN",@"NATUKODI ROAST",@"MUTTON MANCHURIA",@"PEPPER MUTTON",@"CHILLI MUTTON",@"MUTTON 65",@"APOLLO FISH",@"CHILLI FISH",@"FISH TIKKA",@"PEPPER FISH",@"FISH MANCHURIA",@"SATTEA FISH",@"FISH ROAST",@"LOOSE PRAWNS",@"PEPPER PRAWNS",@"CHILLI PRAWNS",@"PRAWNS MANCHURIA", nil];
    
    self.nonVegStarterRatesArr=[[NSMutableArray alloc]initWithObjects:@"200",@"200",@"200",@"200",@"220",@"220",@"260",@"220",@"220",@"190",@"180",@"200",@"220",@"270",@"270",@"270",@"270",@"250",@"220",@"200",@"210",@"220",@"280",@"300",@"280",@"290",@"300",@"290", nil];
    
    
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
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section==0)
    {
        return self.vegstarterArr.count;
    }
    else
    {
        return self.nonVegStarterArr.count;
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"starterCell1" forIndexPath:indexPath];
    if (cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"starterCell1"];
    }


    if (indexPath.section==0)
    {
        cell.textLabel.text=[self.vegstarterArr objectAtIndex:indexPath.row];
        cell.detailTextLabel.text=[self.vegstarterRatesArr objectAtIndex:indexPath.row];
        
    }
    else
    {
        cell.textLabel.text=[self.nonVegStarterArr objectAtIndex:indexPath.row];
        cell.detailTextLabel.text=[self.nonVegStarterRatesArr objectAtIndex:indexPath.row];
    }
    return cell;
}

- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section==0)
    {
        return @"VEG STARTERS";
    }
    else
    {
        return @"NON-VEG STARTERS";
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 60;
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
