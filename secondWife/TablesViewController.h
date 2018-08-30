//
//  TablesViewController.h
//  secondWife
//
//  Created by yogya naga vamsi on 26/12/17.
//  Copyright © 2017 yogya naga vamsi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BillViewController.h"
//#import "AppDelegate.h"

@interface TablesViewController : UIViewController
@property AppDelegate*app;

@property (weak, nonatomic) IBOutlet UIButton *T1Btn;
@property (weak, nonatomic) IBOutlet UIButton *T2Btn;
@property (weak, nonatomic) IBOutlet UIButton *T3Btn;
@property (weak, nonatomic) IBOutlet UIButton *T4Btn;
@property (weak, nonatomic) IBOutlet UIButton *T5Btn;
@property (weak, nonatomic) IBOutlet UIButton *T6Btn;
@property (weak, nonatomic) IBOutlet UIButton *T7Btn;
@property (weak, nonatomic) IBOutlet UIButton *T8Btn;


- (IBAction)tablesBtn:(id)sender;




@end
