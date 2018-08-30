//
//  NonVegBiryaniViewController.m
//  secondWife
//
//  Created by yogya naga vamsi on 07/12/17.
//  Copyright © 2017 yogya naga vamsi. All rights reserved.
//

#import "NonVegBiryaniViewController.h"
#import "NoOfItemsViewController.h"
#import "CartTableViewController.h"
#import "AppDelegate.h"
#import "ItemsTableViewCell.h"

    @interface NonVegBiryaniViewController ()

    @end

    @implementation NonVegBiryaniViewController

    - (void)viewDidLoad {
    [super viewDidLoad];

    self.NVBiryaniArr=[[NSMutableArray alloc]initWithObjects:@"Egg Biryani",@"Chicken Biryani 1Pc",@"COUPLE CHICKEN BIRYANI",@"FRIENDS CHICKEN BIRYANI",@"FAMILY CHICKEN BIRYANI",@"JUMBO CHICKEN BIRYANI",@"CHICKEN SPECIAL B/L BIRYANI",@"MUTTON DUM BIRYANI",@"MUTTON SPECIAL B/L BIRYANI",@"FAMILY MUTTON BIRYANI",@"MUTTON JUMBO BIRYANI",@"PRAWNS BIRYANI",@"FISH BIRYANI",@"ULAVACHARU CHICKEN BIRYANI",@"ULVACHARU SPCL CHICKEN BIRYANI", nil];

    self.NVBiryaniRatesArr=[[NSMutableArray alloc]initWithObjects:@"110",@"130",@"220",@"250",@"350",@"550",@"180",@"170",@"230",@"500",@"700",@"230",@"200",@"250",@"300", nil];

    
    }

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    //[self.tableView selectRowAtIndexPath:[NSIndexPath indexPathForItem:0 inSection:0] animated:YES scrollPosition:UITableViewScrollPositionNone];
    
    [self prepareVisibleCellsForAnimation];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self animateVisibleCells];
}

#pragma mark - Private

- (void)prepareVisibleCellsForAnimation {
    for (int i = 0; i < [self.tableView.visibleCells count]; i++) {
        ItemsTableViewCell * cell = (ItemsTableViewCell *) [self.tableView cellForRowAtIndexPath:[NSIndexPath indexPathForItem:i inSection:0]];
        cell.frame = CGRectMake(-CGRectGetWidth(cell.bounds), cell.frame.origin.y, CGRectGetWidth(cell.bounds), CGRectGetHeight(cell.bounds));
        cell.alpha = 0.f;
    }
}

- (void)animateVisibleCells {
    for (int i = 0; i < [self.tableView.visibleCells count]; i++) {
        ItemsTableViewCell * cell = (ItemsTableViewCell *) [self.tableView cellForRowAtIndexPath:[NSIndexPath indexPathForItem:i inSection:0]];
        
        cell.alpha = 1.f;
        [UIView animateWithDuration:0.25f
                              delay:i * 0.1
                            options:UIViewAnimationOptionCurveEaseOut
                         animations:^{
                             cell.frame = CGRectMake(0.f, cell.frame.origin.y, CGRectGetWidth(cell.bounds), CGRectGetHeight(cell.bounds));
                         }
                         completion:nil];
    }
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
    }

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _NVBiryaniArr.count;
    }


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    
    ItemsTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"NVBiryaniCell" ];
    if (cell
        == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"ExpandCollapseCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.itemNameLbl.text=[self.NVBiryaniArr objectAtIndex:indexPath.row];
    cell.rateLbl.text= [@"Rs." stringByAppendingString:[self.NVBiryaniRatesArr objectAtIndex:indexPath.row]];
    

    

    return cell;
    }

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
   
    
    AppDelegate * app=(AppDelegate*)[[UIApplication sharedApplication] delegate];

    
    
    UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"Hey, there !" message:@"Add item to cart ?" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction * yesAction = [UIAlertAction actionWithTitle:@"Yes" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        [app.itemNamesArray addObject:[self.NVBiryaniArr objectAtIndex:indexPath.row]];
        [app.itemRatesArray addObject:[self.NVBiryaniRatesArr objectAtIndex:indexPath.row]];

        
    }];
    
    UIAlertAction * noAction = [UIAlertAction actionWithTitle:@"No" style:UIAlertActionStyleCancel handler:nil];
    
    [alert addAction:yesAction];
    [alert addAction:noAction];
    
    [self presentViewController:alert animated:YES completion:nil];
    

}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    // space between cells
    return 20;
}








    @end
