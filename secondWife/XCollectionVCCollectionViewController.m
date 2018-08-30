//
//  XCollectionVCCollectionViewController.m
//  secondWife
//
//  Created by yogya naga vamsi on 27/02/18.
//  Copyright © 2018 yogya naga vamsi. All rights reserved.
//

#import "XCollectionVCCollectionViewController.h"
#import "BiryaniTableViewController.h"
#import "StarterTableViewController.h"
#import "RiceTableViewController.h"
#import "SoupsTableViewController.h"
#import "FoodTableViewController.h"
#import "CurriesTableViewController.h"
#import "NoodlesTableViewController.h"
#import "RollsTableViewController.h"
#import "ThangidiTableViewController.h"
#import "ChopsTableViewController.h"
#import "DrinksTableViewController.h"


@interface XCollectionVCCollectionViewController ()

@end

@implementation XCollectionVCCollectionViewController

static NSString * const reuseIdentifier = @"cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.menuArr=[[NSMutableArray alloc]initWithObjects:@"biryani",@"starter",@"rice",@"soups",@"foods",@"curries",@"noodles",@"rolls",@"thangidi",@"drinks",@"chops", nil];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
//    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
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

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.menuArr.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    
    
    
    NSLog(@"hehehe = %@",self.menuArr);

    UILabel *label = (UILabel *)[cell viewWithTag:100];
    [label setText:[self.menuArr objectAtIndex:indexPath.row]];
   
    
    
    UIImageView *imageView = (UIImageView *)[cell viewWithTag:1000];
    imageView.image = [UIImage imageNamed:[self.menuArr objectAtIndex:indexPath.row]];
    
    
    cell.layer.cornerRadius = 10;

    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:   (UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake(self.view.frame.size.width/2-15, 180);
}


-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{

    
    if (indexPath.row==0)
    {
        BiryaniTableViewController*BTVC=[self.storyboard instantiateViewControllerWithIdentifier:@"biryaniIdentifier1"];
        
        [self.navigationController pushViewController:BTVC animated:YES];
    }
    else if (indexPath.row==1)
    {
        StarterTableViewController*STVC=[self.storyboard instantiateViewControllerWithIdentifier:@"starterIdentifier"];
        
        [self.navigationController pushViewController:STVC animated:YES];
    }
    else if (indexPath.row==2)
    {
        RiceTableViewController*RTVC=[self.storyboard instantiateViewControllerWithIdentifier:@"riceIdentifier"];
        
        [self.navigationController pushViewController:RTVC animated:YES];
    }
    else if (indexPath.row==3)
    {
        SoupsTableViewController*STVC=[self.storyboard instantiateViewControllerWithIdentifier:@"soupsIdentifier"];
        
        [self.navigationController pushViewController:STVC animated:YES];
    }
    else if (indexPath.row==4)
    {
        FoodTableViewController*FTVC=[self.storyboard instantiateViewControllerWithIdentifier:@"foodIdentifier"];
        
        [self.navigationController pushViewController:FTVC animated:YES];
    }
    else if (indexPath.row==5)
    {
        CurriesTableViewController*CTVC=[self.storyboard instantiateViewControllerWithIdentifier:@"curriesIdentifier"];
        
        [self.navigationController pushViewController:CTVC animated:YES];
    }
    else if (indexPath.row==6)
    {
        NoodlesTableViewController*NTVC=[self.storyboard instantiateViewControllerWithIdentifier:@"noodlesIdentifier"];
        
        [self.navigationController pushViewController:NTVC animated:YES];
    }
    else if (indexPath.row==7)
    {
        RollsTableViewController*RTVC=[self.storyboard instantiateViewControllerWithIdentifier:@"rollsIdentifier"];
        
        [self.navigationController pushViewController:RTVC animated:YES];
    }
    else if (indexPath.row==8)
    {
        ThangidiTableViewController*TTVC=[self.storyboard instantiateViewControllerWithIdentifier:@"thangidiIdentifier"];
        
        [self.navigationController pushViewController:TTVC animated:YES];
    }
    else if (indexPath.row==10)
    {
        ChopsTableViewController*CTVC=[self.storyboard instantiateViewControllerWithIdentifier:@"chopsIdentifier"];
        
        [self.navigationController pushViewController:CTVC animated:YES];
    }
    
    
    else if (indexPath.row==9)
    {
        DrinksTableViewController*DTVC=[self.storyboard instantiateViewControllerWithIdentifier:@"drinksIdentifier"];
        
        [self.navigationController pushViewController:DTVC animated:YES];
    }
    
    

}



@end
