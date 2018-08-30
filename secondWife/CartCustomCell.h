//
//  CartCustomCell.h
//  secondWife
//
//  Created by yogya naga vamsi on 08/02/18.
//  Copyright © 2018 yogya naga vamsi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface CartCustomCell : UITableViewCell

@property AppDelegate *app;

@property (weak, nonatomic) IBOutlet UILabel *itemNameLbl;
@property (weak, nonatomic) IBOutlet UILabel *quantityLbl;
@property (weak, nonatomic) IBOutlet UILabel *amountLbl;
- (IBAction)plusBtn:(UIButton *)sender;
- (IBAction)minusBtn:(UIButton*)sender;

@property (weak, nonatomic) IBOutlet UIButton *closeBtn;




@property (weak, nonatomic) IBOutlet UILabel *totalAmountLbl;

@property (weak, nonatomic) IBOutlet UIView *bgView;

@property NSString *quantityOfItems;

@property int i;


@property (weak, nonatomic) IBOutlet UIButton *plusButton;


@property (weak, nonatomic) IBOutlet UIButton *minusButton;


@end
