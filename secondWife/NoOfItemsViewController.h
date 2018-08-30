//
//  NoOfItemsViewController.h
//  secondWife
//
//  Created by yogya naga vamsi on 26/12/17.
//  Copyright © 2017 yogya naga vamsi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NoOfItemsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *nameOfItemLbl;
- (IBAction)plusBtn:(id)sender;
- (IBAction)minusBtn:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *noOfItemsLbl;
@property NSMutableArray*itemNamesArr;
@property NSMutableArray*itemNamesRatesArr;
@property (weak, nonatomic) IBOutlet UILabel *itemRateLbl;
@property (weak, nonatomic) IBOutlet UILabel *quantityLbl;
@property (weak, nonatomic) IBOutlet UILabel *totalAmountLbl;

- (IBAction)placeOrderBtn:(id)sender;
- (IBAction)addMoreItemsBtn:(id)sender;



@end
