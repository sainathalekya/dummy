//
//  MenuTableViewController.m
//  secondWife
//
//  Created by yogya naga vamsi on 06/12/17.
//  Copyright © 2017 yogya naga vamsi. All rights reserved.
//

#import "MenuTableViewController.h"
#import "customCell.h"
#import "BiryaniTableViewController.h"
#import "StarterTableViewController.h"
#import "RiceTableViewController.h"
#import "SoupsTableViewController.h"
#import "FoodTableViewController.h"
#import "CurriesTableViewController.h"
#import "NoodlesTableViewController.h"
#import "RollsTableViewController.h"
#import "ThangidiTableViewController.h"
#import "ChopsTableViewController.h"
#import "DrinksTableViewController.h"



@interface MenuTableViewController ()

@end

@implementation MenuTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
        self.tableView.autoresizingMask=UIViewAutoresizingFlexibleWidth|
        UIViewAutoresizingFlexibleHeight|
        UIViewAutoresizingFlexibleTopMargin|
        UIViewAutoresizingFlexibleBottomMargin|
        UIViewAutoresizingFlexibleLeftMargin|
        UIViewAutoresizingFlexibleRightMargin;
    
    self.menuArr=[[NSMutableArray alloc]initWithObjects:@"biryani",@"starter",@"rice",@"soups",@"foods",@"curries",@"noodles",@"rolls",@"thangidi",@"drinks",@"chops", nil];
    
    
    
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
    return self.menuArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    customCell *cell=[tableView dequeueReusableCellWithIdentifier:@"menuIdentifier" ];
    if (cell
        == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"ExpandCollapseCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    
    cell.nameLbl.text=[self.menuArr objectAtIndex:indexPath.row];
    cell.imageView.image=[UIImage imageNamed:[self.menuArr objectAtIndex:indexPath.row]];
    // Configure the cell...
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (indexPath.row==0)
    {
        BiryaniTableViewController*BTVC=[self.storyboard instantiateViewControllerWithIdentifier:@"biryaniIdentifier1"];
        
        [self.navigationController pushViewController:BTVC animated:YES];
    }
    else if (indexPath.row==1)
    {
        StarterTableViewController*STVC=[self.storyboard instantiateViewControllerWithIdentifier:@"starterIdentifier"];
        
        [self.navigationController pushViewController:STVC animated:YES];
    }
    else if (indexPath.row==2)
    {
        RiceTableViewController*RTVC=[self.storyboard instantiateViewControllerWithIdentifier:@"riceIdentifier"];
        
        [self.navigationController pushViewController:RTVC animated:YES];
    }
    else if (indexPath.row==3)
    {
        SoupsTableViewController*STVC=[self.storyboard instantiateViewControllerWithIdentifier:@"soupsIdentifier"];
        
        [self.navigationController pushViewController:STVC animated:YES];
    }
    else if (indexPath.row==4)
    {
        FoodTableViewController*FTVC=[self.storyboard instantiateViewControllerWithIdentifier:@"foodIdentifier"];
        
        [self.navigationController pushViewController:FTVC animated:YES];
    }
    else if (indexPath.row==5)
    {
        CurriesTableViewController*CTVC=[self.storyboard instantiateViewControllerWithIdentifier:@"curriesIdentifier"];
        
        [self.navigationController pushViewController:CTVC animated:YES];
    }
    else if (indexPath.row==6)
    {
        NoodlesTableViewController*NTVC=[self.storyboard instantiateViewControllerWithIdentifier:@"noodlesIdentifier"];
        
        [self.navigationController pushViewController:NTVC animated:YES];
    }
    else if (indexPath.row==7)
    {
        RollsTableViewController*RTVC=[self.storyboard instantiateViewControllerWithIdentifier:@"rollsIdentifier"];
        
        [self.navigationController pushViewController:RTVC animated:YES];
    }
    else if (indexPath.row==8)
    {
        ThangidiTableViewController*TTVC=[self.storyboard instantiateViewControllerWithIdentifier:@"thangidiIdentifier"];
        
        [self.navigationController pushViewController:TTVC animated:YES];
    }
    else if (indexPath.row==10)
    {
        ChopsTableViewController*CTVC=[self.storyboard instantiateViewControllerWithIdentifier:@"chopsIdentifier"];
        
        [self.navigationController pushViewController:CTVC animated:YES];
    }
    

   else if (indexPath.row==9)
    {
        DrinksTableViewController*DTVC=[self.storyboard instantiateViewControllerWithIdentifier:@"drinksIdentifier"];
        
        [self.navigationController pushViewController:DTVC animated:YES];
    }
    


    

    
    
}



@end
