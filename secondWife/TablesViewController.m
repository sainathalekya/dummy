//
//  TablesViewController.m
//  secondWife
//
//  Created by yogya naga vamsi on 26/12/17.
//  Copyright © 2017 yogya naga vamsi. All rights reserved.
//

#import "TablesViewController.h"
#import "MenuTableViewController.h"
#import "XCollectionVCCollectionViewController.h"
#import "AppDelegate.h"

@interface TablesViewController ()

@end

@implementation TablesViewController


-(void)viewWillAppear:(BOOL)animated{

    
    self.app = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    
    self.T1Btn.enabled = self.app.enableTable;
    
    
    
    if ((self.T1Btn.enabled = YES)) {
        
        self.T1Btn.titleLabel.text = @"T1";
    }
    else{
        self.T1Btn.titleLabel.text = @"T1";
    }


}

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
-(void)menuTransfer
{
     //self.app=(AppDelegate*)[[UIApplication sharedApplication]delegate];
     XCollectionVCCollectionViewController *XCVC=[self.storyboard instantiateViewControllerWithIdentifier:@"menuIdentifier2"];
    
    
    [self.navigationController pushViewController:XCVC animated:YES];
}

- (IBAction)T1Btn:(id)sender {
//    BillViewController*bill=[self.storyboard instantiateViewControllerWithIdentifier:@"billIdentifier"];
  //  bill.T1UnsettledLbl.text=[self.app.billArr1 objectAtIndex:0];
    [self menuTransfer];
}


- (IBAction)tablesBtn:(UIButton*)sender {
    
    
    
//    BillViewController*BVC=[self.storyboard instantiateViewControllerWithIdentifier:@"billIdentifier"];
    
    AppDelegate *app = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    
    
    
    if ([sender tag]==1)
    {
        app.btnTag=self.T1Btn.tag;
        app.btnTittle=self.T1Btn.titleLabel.text;
        app.tableNumber = [NSString stringWithFormat:@"%li",(long)sender.tag];
        NSLog(@"tableee num = %@",app.tableNumber);
        app.enableTable = NO;
       
    }else if ([sender tag]==2){
        
        app.btnTag=self.T2Btn.tag;
        app.btnTittle=self.T2Btn.titleLabel.text;
        app.tableNumber = [NSString stringWithFormat:@"%li",(long)sender.tag];
        NSLog(@"tableee num = %@",app.tableNumber);

    }else if ([sender tag]==3){
        
        app.btnTag=self.T3Btn.tag;
        app.btnTittle=self.T3Btn.titleLabel.text;
        app.tableNumber = [NSString stringWithFormat:@"%li",(long)sender.tag];
        NSLog(@"tableee num = %@",app.tableNumber);

    }
    else if ([sender tag]==4){
        
        app.btnTag=self.T4Btn.tag;
        app.btnTittle=self.T4Btn.titleLabel.text;
        app.tableNumber = [NSString stringWithFormat:@"%li",(long)sender.tag];
        NSLog(@"tableee num = %@",app.tableNumber);

    }
    else if ([sender tag]==5){
        
        app.btnTag=self.T5Btn.tag;
        app.btnTittle=self.T5Btn.titleLabel.text;
        app.tableNumber = [NSString stringWithFormat:@"%li",(long)sender.tag];
        NSLog(@"tableee num = %@",app.tableNumber);

    }
    else if ([sender tag]==6){
        
        app.btnTag=self.T6Btn.tag;
        app.btnTittle=self.T6Btn.titleLabel.text;
        app.tableNumber = [NSString stringWithFormat:@"%li",(long)sender.tag];
        NSLog(@"tableee num = %@",app.tableNumber);

    }
    else if ([sender tag]==7){
        
        app.btnTag=self.T7Btn.tag;
        app.btnTittle=self.T7Btn.titleLabel.text;
        app.tableNumber = [NSString stringWithFormat:@"%li",(long)sender.tag];
        NSLog(@"tableee num = %@",app.tableNumber);

    }
    else if ([sender tag]==8){
        
        app.btnTag=self.T8Btn.tag;
        app.btnTittle=self.T8Btn.titleLabel.text;
        app.tableNumber = [NSString stringWithFormat:@"%li",(long)sender.tag];
        NSLog(@"tableee num = %@",app.tableNumber);

    }

    [self menuTransfer];

}
@end
