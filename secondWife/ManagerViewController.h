//
//  ManagerViewController.h
//  secondWife
//
//  Created by yogya naga vamsi on 27/01/18.
//  Copyright © 2018 yogya naga vamsi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ManagerViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *dateTF;
- (IBAction)getAllRecordsFromDB:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *dateLbl;
@property (weak, nonatomic) IBOutlet UILabel *itemNameLbl;

@property (weak, nonatomic) IBOutlet UILabel *tableNum;
@property (weak, nonatomic) IBOutlet UILabel *totalAmountLbl;

@end
