//
//  CartTableViewController.m
//  secondWife
//
//  Created by yogya naga vamsi on 08/02/18.
//  Copyright © 2018 yogya naga vamsi. All rights reserved.
//

#import "CartTableViewController.h"
#import "CartCustomCell.h"
#import "PrintViewController.h"

@interface CartTableViewController ()

@end

@implementation CartTableViewController



- (void)viewDidLoad {
    
    
    
    [self.tableView reloadData];
    
    
    
    
    self.app=(AppDelegate*)[[UIApplication sharedApplication] delegate];
    
    
    NSLog(@"here we go = %@",self.app.itemNamesArray);
    
    if (self.app.itemNamesArray.count == 0) {
        
        UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"Oops" message:@"No items added" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction * okAction = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleCancel handler:nil];
        
        [alert addAction:okAction];
        
        [self presentViewController:alert animated:YES completion:nil];
        
        
        self.checkoutBtn.enabled=NO;
        
    }
    
    else{
        
        self.checkoutBtn.enabled=YES;
        
    }
    
    [self.quanArray removeAllObjects];
    [self.amountArray removeAllObjects];
    [self.totalItemsArr removeAllObjects];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    

    self.printStr=@"";
    
    self.i = 1;
    
    [super viewDidLoad];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.tableView.allowsMultipleSelectionDuringEditing = NO;
    
    
    self.detailsArray=[[NSMutableArray alloc]init];
    self.totalItemsArr=[[NSMutableArray alloc]init];
    self.quanArray=[[NSMutableArray alloc]init];
    self.amountArray=[[NSMutableArray alloc]init];
    
    

    
    self.navigationItem.leftBarButtonItem.tintColor = [UIColor whiteColor];
    self.navigationItem.backBarButtonItem.tintColor = [UIColor whiteColor];

    [self.tableView setAllowsSelection:NO];
}

-(void)viewWillAppear:(BOOL)animated{
    
    
//    [self.tableView reloadData];
//
//
//
//
//    self.app=(AppDelegate*)[[UIApplication sharedApplication] delegate];
//
//
//    NSLog(@"here we go = %@",self.app.itemNamesArray);
//
//    if (self.app.itemNamesArray.count == 0) {
//
//        UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"Oops" message:@"No items added" preferredStyle:UIAlertControllerStyleAlert];
//
//        UIAlertAction * okAction = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleCancel handler:nil];
//
//        [alert addAction:okAction];
//
//        [self presentViewController:alert animated:YES completion:nil];
//
//
//        self.checkoutBtn.enabled=NO;
//
//    }
//
//    else{
//
//        self.checkoutBtn.enabled=YES;
//
//    }
//
//    [self.quanArray removeAllObjects];
//    [self.amountArray removeAllObjects];
//    [self.totalItemsArr removeAllObjects];
//
//    self.tableView.delegate = self;
//    self.tableView.dataSource = self;
//


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
    
     self.app=(AppDelegate*)[[UIApplication sharedApplication] delegate];
    
    return self.app.itemNamesArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
     self.app=(AppDelegate*)[[UIApplication sharedApplication] delegate];
    
    CartCustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cartCellIdentifier" forIndexPath:indexPath];
    if (cell
        == nil)
    {

        
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"ExpandCollapseCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    
    
        cell.itemNameLbl.text=[self.app.itemNamesArray objectAtIndex:indexPath.row];
    
    
        cell.amountLbl.text=[self.app.itemRatesArray objectAtIndex:indexPath.row];
    

    
        int result = [cell.quantityLbl.text intValue] * [cell.amountLbl.text intValue];
    
    
        cell.totalAmountLbl.text = [NSString stringWithFormat:@"%d", result];
    
   
    
        self.itemName = [self.app.itemNamesArray objectAtIndex:indexPath.row];

        

        self.itemQuantity = cell.quantityLbl.text;
        [self.quanArray addObject:self.itemQuantity];

        
        self.itemAmount = cell.totalAmountLbl.text;
        [self.amountArray addObject:self.itemAmount];
        
        self.totalItems = [self.itemQuantity stringByAppendingString:self.itemName];
        [self.totalItemsArr addObject:self.totalItems];
    
    

        [self.detailsArray removeAllObjects];

        [self.detailsArray addObjectsFromArray:@[self.quanArray,self.amountArray,self.totalItemsArr]];

    
    
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    return 130;
}


- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return YES if you want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        self.app=(AppDelegate*)[[UIApplication sharedApplication] delegate];
        //add code here for when you hit delete
        [self.app.itemNamesArray removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
        
        [self.quanArray removeObjectAtIndex:indexPath.row];
        [self.amountArray removeObjectAtIndex:indexPath.row];
        

    }
}




- (IBAction)checkOutBtn:(id)sender {
    
    [self.tableView reloadData];
    
    
    PrintViewController * PVC=[self.storyboard instantiateViewControllerWithIdentifier:@"printIdentifier"];
    
    
    
    
    for (int i=0 ; i<self.totalItemsArr.count ; i++){
        
    
        self.printStr = [[self.printStr stringByAppendingString:[self.totalItemsArr objectAtIndex:i]]stringByAppendingString:@", "];
        
    
            }
    

    
    
    PVC.printStr1 = self.printStr;
    self.printStr = @"";
    
    
    float total = 0;
    for(NSString *str in self.amountArray)
    {
        total += [str floatValue];
    }


    
    PVC.itemCount = [NSString stringWithFormat:@"%lu",self.totalItemsArr.count];
    
    PVC.totalAmount1 = [@"Rs. " stringByAppendingString:[NSString stringWithFormat:@"%.f",total]];
    
    
    
    [self.navigationController pushViewController:PVC animated:YES];
    
    
    
    
    
}









@end
