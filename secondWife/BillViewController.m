//
//  BillViewController.m
//  secondWife
//
//  Created by yogya naga vamsi on 26/12/17.
//  Copyright © 2017 yogya naga vamsi. All rights reserved.
//

#import "BillViewController.h"
#import "TablesViewController.h"

@interface BillViewController ()

@end

@implementation BillViewController

- (void)viewDidLoad {
    
    NSLog(@"table number = %@",self.tableNumber);
    
    [super viewDidLoad];
    
    
    
    self.app=(AppDelegate*)[[UIApplication sharedApplication]delegate];
    self.app.enableTable = NO;
    
    NSLog(@"app table number = %@",self.app.tableNumber);
    
    self.tableNumber = self.app.tableNumber;
    
    NSLog(@"table number2 = %@",self.tableNumber);
    
    NSDate *currDate = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"dd.MM.YY "];
    NSString *dateString = [dateFormatter stringFromDate:currDate];
    self.dateLbl.text=dateString;
    [self createElements];
    // Do any additional setup after loading the view.
}

-(void)createElements
{
//    TablesViewController*TVC=[self.storyboard instantiateViewControllerWithIdentifier:@"tablesIdentifier"];
   if ([self.tableNumber intValue]==self.T1UnsettledLbl.tag) {
        self.T1UnsettledLbl.text=[self.billArray objectAtIndex:0];
       
    }else if ([self.tableNumber intValue]==self.T2UnsettledLbl.tag){
        
        self.T2UnsettledLbl.text=[self.billArray objectAtIndex:0];
    }else if ([self.tableNumber intValue]==self.T3UnsettledLbl.tag){
        
        self.T3UnsettledLbl.text=[self.billArray objectAtIndex:0];
    }else if ([self.tableNumber intValue]==self.T4UnsettledLbl.tag){
        
        self.T4UnsettledLbl.text=[self.billArray objectAtIndex:0];
    }else if ([self.tableNumber intValue]==self.T5UnsettledLbl.tag){
        
        self.T5UnsettledLbl.text=[self.billArray objectAtIndex:0];
    }else if ([self.tableNumber intValue]==self.T6UnsettledLbl.tag){
        
        self.T6UnsettledLbl.text=[self.billArray objectAtIndex:0];
    }else if ([self.tableNumber intValue]==self.T7UnsettledLbl.tag){
        
        self.T7UnsettledLbl.text=[self.billArray objectAtIndex:0];
    }else if ([self.tableNumber intValue]==self.T8UnsettledLbl.tag){
        
        self.T8UnsettledLbl.text=[self.billArray objectAtIndex:0];
    }
    
    int totalResult=[self.T1UnsettledLbl.text intValue]+[self.T2UnsettledLbl.text intValue]+[self.T3UnsettledLbl.text intValue]+[self.T4UnsettledLbl.text intValue]+[self.T5UnsettledLbl.text intValue]+[self.T6UnsettledLbl.text intValue]+[self.T7UnsettledLbl.text intValue]+[self.T8UnsettledLbl.text intValue];
    
    self.totalUnsettledLbl.text=[NSString stringWithFormat:@"%d",totalResult];
    
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

- (IBAction)payBtn:(id)sender {
    
    self.app=(AppDelegate*)[[UIApplication sharedApplication]delegate];
    self.app.enableTable = YES;
    
    
    if (![self.T1UnsettledLbl.text isEqualToString:@"0"]||![self.T2UnsettledLbl.text isEqualToString:@"0"]||![self.T3UnsettledLbl.text isEqualToString:@"0"]||![self.T4UnsettledLbl.text isEqualToString:@"0"]||![self.T5UnsettledLbl.text isEqualToString:@"0"]||![self.T6UnsettledLbl.text isEqualToString:@"0"]||![self.T7UnsettledLbl.text isEqualToString:@"0"]||![self.T8UnsettledLbl.text isEqualToString:@"0"])
    {
        UIAlertController *actionSheet = [UIAlertController alertControllerWithTitle:@"Action Sheet" message:@"alert controller" preferredStyle:UIAlertControllerStyleActionSheet];
        
        [actionSheet addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
            
            // Cancel button tappped.
            [self dismissViewControllerAnimated:YES completion:^{
            }];
        }]];
        
        [actionSheet addAction:[UIAlertAction actionWithTitle:@"cash" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            
            // cash button tapped.
            
            [self createBillType];
            
        }]];
        
        [actionSheet addAction:[UIAlertAction actionWithTitle:@"paytm" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            
            // paytm button tapped.
            
            [self createBillType];
            
        }]];
        
        
        [actionSheet addAction:[UIAlertAction actionWithTitle:@"card" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            
            // card button tapped.
            [self createBillType];
            
            
        }]];
        
        // Present action sheet.
        [self presentViewController:actionSheet animated:YES completion:nil];
        
    }
    else
    {
        NSLog(@"you have no bill to settled");
    }
    
}
-(void)createBillType
{
    

    if (self.app.btnTag==self.T1UnsettledLbl.tag)
    {
        if(![self.T1UnsettledLbl.text isEqualToString:@"0"]){
            self.T1SettledLbl.text=self.T1UnsettledLbl.text;
            self .T1UnsettledLbl.text=@"0";
        }
    }else if (self.app.btnTag==self.T2UnsettledLbl.tag)
    {
        if(![self.T2UnsettledLbl.text isEqualToString:@"0"]){
        self.T2SettledLbl.text=self.T2UnsettledLbl.text;
        self.T2UnsettledLbl.text=@"0";
        }

    }else if (self.app.btnTag==self.T3UnsettledLbl.tag)
    {
        if(![self.T3UnsettledLbl.text isEqualToString:@"0"]){
        self.T3SettledLbl.text=self.T3UnsettledLbl.text;
        self.T3UnsettledLbl.text=@"0";
        }

    }else if (self.app.btnTag==self.T4UnsettledLbl.tag)
    {
        if(![self.T4UnsettledLbl.text isEqualToString:@"0"]){
        self.T4SettledLbl.text=self.T4UnsettledLbl.text;
        self.T4UnsettledLbl.text=@"0";
        }

    }else if (self.app.btnTag==self.T5UnsettledLbl.tag)
    {
        if(![self.T5UnsettledLbl.text isEqualToString:@"0"]){
        self.T5SettledLbl.text=self.T5UnsettledLbl.text;
        self.T5UnsettledLbl.text=@"0";
        }

    }else if (self.app.btnTag==self.T6UnsettledLbl.tag)
    {
        if(![self.T6UnsettledLbl.text isEqualToString:@"0"]){
        self.T6SettledLbl.text=self.T6UnsettledLbl.text;
        self.T6UnsettledLbl.text=@"0";
        }

    }else if (self.app.btnTag==self.T7UnsettledLbl.tag)
    {
        if(![self.T7UnsettledLbl.text isEqualToString:@"0"]){
        self.T7SettledLbl.text=self.T7UnsettledLbl.text;
        self.T7UnsettledLbl.text=@"0";
        }

    }else if (self.app.btnTag==self.T8UnsettledLbl.tag)
    {
        if(![self.T8UnsettledLbl.text isEqualToString:@"0"]){
        self.T8SettledLbl.text=self.T8UnsettledLbl.text;
        self.T8UnsettledLbl.text=@"0";
        }

    }
    
    int totalSettled=[self.T1SettledLbl.text intValue]+[self.T2SettledLbl.text intValue]+[self.T3SettledLbl.text intValue]+[self.T4SettledLbl.text intValue]+[self.T5SettledLbl.text intValue]+[self.T6SettledLbl.text intValue]+[self.T7SettledLbl.text intValue]+[self.T8SettledLbl.text intValue];
    
    self.totalSettledLbl.text=[NSString stringWithFormat:@"%d",totalSettled];
    
    self.totalUnsettledLbl.text=@"0";
    
}

- (IBAction)takeAnotherTableBtn:(id)sender {
    
    TablesViewController*TVC=[self.storyboard instantiateViewControllerWithIdentifier:@"tablesIdentifier"];
   //[self presentViewController:TVC animated:YES completion:^{
        //[self.navigationController popViewControllerAnimated:YES];
    //}];
   [self.navigationController pushViewController:TVC animated:YES];
    
    //[self dismissViewControllerAnimated:YES completion:nil];
    
//    [self.navigationController popToRootViewControllerAnimated:YES];
    }
@end
