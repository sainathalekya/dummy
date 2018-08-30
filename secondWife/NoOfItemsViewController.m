//
//  NoOfItemsViewController.m
//  secondWife
//
//  Created by yogya naga vamsi on 26/12/17.
//  Copyright © 2017 yogya naga vamsi. All rights reserved.
//

#import "NoOfItemsViewController.h"
#import "PrintViewController.h"
#import "MenuTableViewController.h"

@interface NoOfItemsViewController ()

@property int i;
@end

@implementation NoOfItemsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.i=1;
    
    self.nameOfItemLbl.text=[NSString stringWithFormat:@"%@",self.itemNamesArr];
    self.totalAmountLbl.text=self.nameOfItemLbl.text;
    self.itemRateLbl.text=[NSString stringWithFormat:@"%@",self.itemNamesRatesArr];
      self.totalAmountLbl.text=self.itemRateLbl.text;
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

- (IBAction)plusBtn:(id)sender {
    
    self.i++;
    
  self.noOfItemsLbl.text=[NSString stringWithFormat:@"%d",self.i];
    self.quantityLbl.text=[NSString stringWithFormat:@"%d",self.i];
    int result = [self.noOfItemsLbl.text intValue] * [self.itemRateLbl.text intValue];
    
    self.totalAmountLbl.text = [NSString stringWithFormat:@"%d", result];
}

- (IBAction)minusBtn:(id)sender {
    
    if(self.i>0){
        
        self.i--;
        
        self.noOfItemsLbl.text=[NSString stringWithFormat:@"%d",self.i];
        self.quantityLbl.text=[NSString stringWithFormat:@"%d",self.i];
        int result = [self.noOfItemsLbl.text intValue] * [self.itemRateLbl.text intValue];
        
        self.totalAmountLbl.text = [NSString stringWithFormat:@"%d", result];
        
    }else{
        
    }
    
}

- (IBAction)placeOrderBtn:(id)sender {
    
    
    
    PrintViewController*PVC=[self.storyboard instantiateViewControllerWithIdentifier:@"printIdentifier"];
    
    PVC.itemRate=self.totalAmountLbl.text;
    PVC.itemName=self.nameOfItemLbl.text;
    PVC.itemCount=self.noOfItemsLbl.text;
    
    [self.navigationController pushViewController:PVC animated:YES];
    
}

- (IBAction)addMoreItemsBtn:(id)sender {
    
//    if (self.nameOfItemLbl.text!=nil)
//    {
//        
//    
//    MenuTableViewController*MTVC=[self.storyboard instantiateViewControllerWithIdentifier:@"menuIdentifier"];
//    
//    [self.navigationController pushViewController:MTVC animated:YES];
//    }
    
}
@end
