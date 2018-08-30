//
//  CartTableViewController.h
//  secondWife
//
//  Created by yogya naga vamsi on 08/02/18.
//  Copyright © 2018 yogya naga vamsi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface CartTableViewController : UITableViewController

//@property NSMutableArray *itemNamesArray;
//@property NSMutableArray *itemRatesArray;
@property AppDelegate *app;
- (IBAction)checkOutBtn:(id)sender;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *checkoutBtn;
@property NSString * itemName;
@property NSString *itemQuantity;
@property NSString *itemAmount;
@property NSString * totalItems;
@property NSMutableArray *totalItemsArr;
@property NSMutableArray *totalItemsArr1;

@property NSMutableArray * quanArray;
@property NSMutableArray * amountArray;

@property NSString *printStr;

@property NSMutableArray * detailsArray;

@property int i;



@end
