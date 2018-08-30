//
//  ManagerViewController.m
//  secondWife
//
//  Created by yogya naga vamsi on 27/01/18.
//  Copyright © 2018 yogya naga vamsi. All rights reserved.
//

#import "ManagerViewController.h"
#import "PrintViewController.h"
#import <sqlite3.h>


@interface ManagerViewController ()


@end

@implementation ManagerViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)getAllRecordsFromDB:(id)sender {
    PrintViewController *PVC=[self.storyboard instantiateViewControllerWithIdentifier:@"printIdentifier"];
    
    
    
    const char *dbpath = [PVC.databasePath UTF8String];
    sqlite3_stmt    *statement;
    
    sqlite3 * restaurentDetails1 ;
    
    if (sqlite3_open(dbpath, &restaurentDetails1) == SQLITE_OK)
    {
        NSString *querySQL = [NSString stringWithFormat: @"SELECT * from RESTAURENTDETAILS1"];
        
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(PVC.restaurentDetails1, query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                PVC.columnNum = [[NSString alloc] initWithUTF8String:(const char *) sqlite3_column_text(statement, 0)];
                
                PVC.tableNum1 = [[NSString alloc] initWithUTF8String:(const char *) sqlite3_column_text(statement, 1)];
                
                PVC.date1 = [[NSString alloc] initWithUTF8String:(const char *) sqlite3_column_text(statement, 2)];
                
                PVC.itemName1 = [[NSString alloc] initWithUTF8String:(const char *) sqlite3_column_text(statement, 3)];
                
                PVC.itemCount1 = [[NSString alloc] initWithUTF8String:(const char *) sqlite3_column_text(statement, 4)];
                
                PVC.totalAmount1 = [[NSString alloc] initWithUTF8String:(const char *) sqlite3_column_text(statement, 5)];
                
                  NSLog(@"columnNum: %@ tableNum: %@ date: %@ itemname:%@ count: %@ totalAmount: %@",PVC.columnNum,PVC.tableNum1,PVC.date1,PVC.itemName1,PVC.itemCount1,PVC.totalAmount1);
                
            }
            
            
            sqlite3_finalize(statement);
        }
        sqlite3_close(PVC.restaurentDetails1);
    }
    
    if ([self.dateTF.text isEqualToString:@"1"])
    {
        self.dateLbl.text = PVC.date1;
        self.itemNameLbl.text = PVC.itemName1;
        self.tableNum.text = PVC.tableNum1;
        self.totalAmountLbl.text=PVC.totalAmount1;
        
    }
    else
    {
        NSLog(@"there is no column you enter");
    
    }
    
}
@end
