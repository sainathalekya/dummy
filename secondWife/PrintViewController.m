//
//  PrintViewController.m
//  secondWife
//
//  Created by yogya naga vamsi on 26/12/17.
//  Copyright © 2017 yogya naga vamsi. All rights reserved.
///Users/vamsikotha233/Desktop/secondWife/secondWife/StarterTableViewController.m

#import "CartTableViewController.h"
#import "PrintViewController.h"
#import "BillViewController.h"
#import "AppDelegate.h"
@interface PrintViewController ()

 @end

@implementation PrintViewController




- (void)viewDidLoad {
    
    self.totalAmount2 = self.totalAmount1;
    
    [super viewDidLoad];
    
    
    NSDate *currDate = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"dd.MM.YY  HH:mm:ss"];
    NSString *dateString = [dateFormatter stringFromDate:currDate];
    self.dateLbl.text=dateString;
    
    self.totalAmountLbl.text = self.totalAmount2;
    self.itemCountLbl.text=self.itemCount;
    
    self.itemNameLbl.text = self.printStr1;
    

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

- (IBAction)printBtn:(id)sender {
    
   
    
    //NSLog(@"%@",self.appTag.btnTittle);
    BillViewController*BVC=[self.storyboard instantiateViewControllerWithIdentifier:@"billIdentifier"];
    BVC.billArray=[[NSMutableArray alloc]init];
    //[objApp.billArr1 addObject:self.itemRate];
    [BVC.billArray addObject:self.totalAmount1];
//    [self initializeUIElements];
//    [self createDBIfNotExist];
//    [self saveData];
//    [self getAllDetails];

    //NSLog(@"billarray is %@",BVC.billArray);
    [self.navigationController pushViewController:BVC animated:YES];
    
}
//-(void)createDBIfNotExist
//    {
//        NSString *docsDir;
//        NSArray *dirPaths;
//        
//        
//        // Get the documents directory
//        dirPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
//        
//        
//        NSLog(@"dirPaths is %@",dirPaths);
//        
//        docsDir = [dirPaths objectAtIndex:0];
//        
//        NSLog(@"docsDir is %@",docsDir);
//        
//        // Build the path to the database file
//        _databasePath = [[NSString alloc] initWithString: [docsDir stringByAppendingPathComponent: @"restaurentDetails1"]];
//        
//        NSLog(@"database path-->%@",_databasePath);
//        
//        
//        sqlite3_stmt    *statement;
//        
//        NSFileManager *filemgr = [NSFileManager defaultManager];
//        
//        if ([filemgr fileExistsAtPath: _databasePath ] == NO)
//        {
//            
//            NSLog(@"Database doesnt exist, need to create it");
//            const char *dbpath = [_databasePath UTF8String];
//            
//            if (sqlite3_open(dbpath, &_restaurentDetails1) == SQLITE_OK)
//            {
//                char *errMsg;
//                const char *sql_stmt = "CREATE TABLE IF NOT EXISTS RESTAURENTDETAILS1 (ID INTEGER PRIMARY KEY AUTOINCREMENT, TABLENUM, DATE, ITEMNAME, ITEMCOUNT, TOTALAMOUNT)";
//                
//                
//                ////////
//                
//                
//                
//                sqlite3_prepare_v2(_restaurentDetails1, sql_stmt, -1, &statement, NULL);
//                if (sqlite3_step(statement) != SQLITE_DONE)
//                {
//                    _statusLbl.text = @"Failed to create table";
//                }
//                
//                
//                ///////
//                
//                
//                
//                //            if (sqlite3_exec(_contactDB, sql_stmt, NULL, NULL, &errMsg) != SQLITE_OK)
//                //            {
//                //                _statusLbl.text = @"Failed to create table";
//                //            }
//                
//                sqlite3_close(_restaurentDetails1);
//                
//            } else {
//                _statusLbl.text = @"Failed to open/create database";
//            }
//        }
//        
//    }
//    
//    
//    -(void)initializeUIElements
//    {
//        _statusLbl = [[UILabel alloc]initWithFrame:CGRectMake(100, 350, 300, 30)];
//        _statusLbl.text = @"Status of SQL lite updates";
//        
//        
//        [self.view addSubview:_statusLbl];
//        
//    }
//    
//    
//    
//
//    
//    
//    
//- (void) saveData
//    {
//        [self.statusLbl removeFromSuperview];
//        sqlite3_stmt    *statement;
//        
//        const char *dbpath = [_databasePath UTF8String];
//        
//        if (sqlite3_open(dbpath, &_restaurentDetails1) == SQLITE_OK)
//        {
//        NSString *insertSQL = [NSString stringWithFormat: @"INSERT INTO RESTAURENTDETAILS1 (tableNum, date, itemName, itemCount, totalAmount) VALUES (\"%@\", \"%@\", \"%@\", \"%@\", \"%@\")", _appTag.btnTittle,  self.dateLbl.text,self.itemNameLbl.text,self.itemCountLbl.text,self.totalAmountLbl.text];
//            
//            NSLog(@" data store %@",insertSQL);
//            
//            const char *insert_stmt = [insertSQL UTF8String];
//            
//            sqlite3_prepare_v2(_restaurentDetails1, insert_stmt, -1, &statement, NULL);
//            if (sqlite3_step(statement) == SQLITE_DONE)
//            {
//                _statusLbl.text = @"Contact added";
////                self.firstNameTF.text = @"";
////                self.lastNameTF.text = @"";
////                self.genderTF.text = @"";
////                self.mobileNumTF.text = @"";
////                self.cityTF.text = @"";
////                self.stateTF.text = @"";
////                self.emailTF.text = @"";
////                self.passwordTF.text = @"";
////                self.retypePasswordTF.text = @"";
//            }
//            else
//            {
//                
//                _statusLbl.text = @"Failed to add contact";
//            }
//            sqlite3_finalize(statement);
//            sqlite3_close(_restaurentDetails1);
//        }
//    }
//
//
//
//-(void)getAllDetails
//{
//
//const char *dbpath = [self.databasePath UTF8String];
//sqlite3_stmt    *statement;
//
//
//
//if (sqlite3_open(dbpath, &_restaurentDetails1) == SQLITE_OK)
//{
//    NSString *querySQL = [NSString stringWithFormat: @"SELECT * from RESTAURENTDETAILS1"];
//    
//    const char *query_stmt = [querySQL UTF8String];
//    
//    if (sqlite3_prepare_v2(_restaurentDetails1, query_stmt, -1, &statement, NULL) == SQLITE_OK)
//    {
//        
//        while (sqlite3_step(statement) == SQLITE_ROW)
//        {
//         self.columnNum = [[NSString alloc] initWithUTF8String:(const char *) sqlite3_column_text(statement, 0)];
//            
//             self.tableNum1 = [[NSString alloc] initWithUTF8String:(const char *) sqlite3_column_text(statement, 1)];
//            
//             self.date1 = [[NSString alloc] initWithUTF8String:(const char *) sqlite3_column_text(statement, 2)];
//            
//            self.itemName1 = [[NSString alloc] initWithUTF8String:(const char *) sqlite3_column_text(statement, 3)];
//            
//            self.itemCount1 = [[NSString alloc] initWithUTF8String:(const char *) sqlite3_column_text(statement, 4)];
//            
//            self.totalAmount1 = [[NSString alloc] initWithUTF8String:(const char *) sqlite3_column_text(statement, 5)];
//            
//           // NSLog(@"columnNum: %@ tableNum: %@ date: %@ itemname:%@ count: %@ totalAmount: %@",self.columnNum,self.tableNum1,self.date1,self.itemName1,self.itemCount1,self.totalAmount1);
//            
//        }
//        
//        
//        sqlite3_finalize(statement);
//    }
//    sqlite3_close(_restaurentDetails1);
//}
//}
//

//- (void) getAllRecordsFromDB
//{
//    const char *dbpath = [_databasePath UTF8String];
//    sqlite3_stmt    *statement;
//
//    if (sqlite3_open(dbpath, &_restaurentDetails1) == SQLITE_OK)
//    {
//        NSString *querySQL = [NSString stringWithFormat: @"SELECT * from contacts"];
//        
//        const char *query_stmt = [querySQL UTF8String];
//        
//        if (sqlite3_prepare_v2(_restaurentDetails1, query_stmt, -1, &statement, NULL) == SQLITE_OK)
//        {
//            
//            while (sqlite3_step(statement) == SQLITE_ROW)
//            {
//                NSLog(@"columns count is %i",sqlite3_data_count(statement));
//                
//                NSString *idField = [[NSString alloc] initWithUTF8String:(const char *) sqlite3_column_text(statement, 0)];
//                
//                NSString *nameField = [[NSString alloc] initWithUTF8String:(const char *) sqlite3_column_text(statement, 1)];
//                
//                NSString *addressField = [[NSString alloc] initWithUTF8String:(const char *) sqlite3_column_text(statement, 2)];
//                
//                NSString *phoneField = [[NSString alloc] initWithUTF8String:(const char *) sqlite3_column_text(statement, 3)];
//                
//                NSLog(@"record is ID:%@ Name: %@ Address: %@ Phone:%@",idField,nameField,addressField,phoneField);
//                
//            }
//            
//            
//            sqlite3_finalize(statement);
//        }
//        sqlite3_close(_restaurentDetails1);
//    }
//}






@end
