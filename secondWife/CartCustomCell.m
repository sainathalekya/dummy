//
//  CartCustomCell.m
//  secondWife
//
//  Created by yogya naga vamsi on 08/02/18.
//  Copyright © 2018 yogya naga vamsi. All rights reserved.
//

#import "CartCustomCell.h"
#import "CartTableViewController.h"


@implementation CartCustomCell


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    self.i = 1;

    
    self.app=(AppDelegate*)[[UIApplication sharedApplication] delegate];
    
    self.bgView.layer.cornerRadius = 5;
    
    self.bgView.layer.shadowColor = [UIColor lightGrayColor].CGColor;
    self.bgView.layer.shadowOffset = CGSizeMake(3, 2);
    self.bgView.layer.shadowOpacity = 0.5;
    self.bgView.layer.shadowRadius = 0.5;
    self.bgView.layer.masksToBounds = NO;
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)plusBtn:(UIButton *)sender {
    
    self.i++;

        self.quantityLbl.text=[NSString stringWithFormat:@"%d",self.i];
        int result = [self.quantityLbl.text intValue] * [self.amountLbl.text intValue];
        
        self.totalAmountLbl.text = [NSString stringWithFormat:@"%d", result];
        


}

- (IBAction)minusBtn:(id)sender {
    
    if(self.i>0){
        
        self.i--;
        
        self.quantityLbl.text=[NSString stringWithFormat:@"%d",self.i];
        int result = [self.quantityLbl.text intValue] * [self.amountLbl.text intValue];
        
        self.totalAmountLbl.text = [NSString stringWithFormat:@"%d", result];
        
    }
    else
    {
    }
}


@end
