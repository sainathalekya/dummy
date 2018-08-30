//
//  BillViewController.h
//  secondWife
//
//  Created by yogya naga vamsi on 26/12/17.
//  Copyright © 2017 yogya naga vamsi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface BillViewController : UIViewController<UIActionSheetDelegate>


@property (weak, nonatomic) IBOutlet UILabel *dateLbl;
@property (weak, nonatomic) IBOutlet UILabel *T1UnsettledLbl;
@property (weak, nonatomic) IBOutlet UILabel *T2UnsettledLbl;
@property (weak, nonatomic) IBOutlet UILabel *T3UnsettledLbl;
@property (weak, nonatomic) IBOutlet UILabel *T4UnsettledLbl;
@property (weak, nonatomic) IBOutlet UILabel *T5UnsettledLbl;
@property (weak, nonatomic) IBOutlet UILabel *T6UnsettledLbl;
@property (weak, nonatomic) IBOutlet UILabel *T7UnsettledLbl;
@property (weak, nonatomic) IBOutlet UILabel *T8UnsettledLbl;
@property (weak, nonatomic) IBOutlet UILabel *T1SettledLbl;
@property (weak, nonatomic) IBOutlet UILabel *T2SettledLbl;
@property (weak, nonatomic) IBOutlet UILabel *T3SettledLbl;
@property (weak, nonatomic) IBOutlet UILabel *T4SettledLbl;
@property (weak, nonatomic) IBOutlet UILabel *T5SettledLbl;
@property (weak, nonatomic) IBOutlet UILabel *T6SettledLbl;
@property (weak, nonatomic) IBOutlet UILabel *T7SettledLbl;
@property (weak, nonatomic) IBOutlet UILabel *T8SettledLbl;
@property (weak, nonatomic) IBOutlet UILabel *totalUnsettledLbl;
@property (weak, nonatomic) IBOutlet UILabel *totalSettledLbl;

@property NSString * tableNumber;

@property NSMutableArray *billArray;
@property AppDelegate*app;

@property (weak, nonatomic) IBOutlet UILabel *tableLbl;

- (IBAction)payBtn:(id)sender;
- (IBAction)takeAnotherTableBtn:(id)sender;



@end
