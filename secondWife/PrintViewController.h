//
//  PrintViewController.h
//  secondWife
//
//  Created by yogya naga vamsi on 26/12/17.
//  Copyright © 2017 yogya naga vamsi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <sqlite3.h>
#import "AppDelegate.h"


@interface PrintViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *dateLbl;
@property (weak, nonatomic) IBOutlet UILabel *itemNameLbl;
@property (weak, nonatomic) IBOutlet UILabel *itemCountLbl;
@property (weak, nonatomic) IBOutlet UILabel *totalAmountLbl;
@property NSString*itemName;
@property NSString*itemCount;
@property NSString*itemRate;

@property NSString *tableNum;

@property NSString*itemName1;
@property NSString*itemCount1;
@property NSString*columnNum;

@property NSString *tableNum1;
@property NSString *totalAmount1;
@property NSString *totalAmount2;
@property NSString *date1;


- (IBAction)printBtn:(id)sender;

@property AppDelegate *appTag;
@property NSMutableArray * totalPrintItemsArr;



@property  NSString *databasePath;
@property UILabel *statusLbl;
//@property sqlite3 * restaurentDetails ;
@property sqlite3 * restaurentDetails1 ;


@property NSString * printStr1;

@end
