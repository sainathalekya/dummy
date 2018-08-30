//
//  ItemsTableViewCell.h
//  secondWife
//
//  Created by yogya naga vamsi on 28/02/18.
//  Copyright © 2018 yogya naga vamsi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ItemsTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *itemNameLbl;
@property (weak, nonatomic) IBOutlet UILabel *rateLbl;

@property (weak, nonatomic) IBOutlet UIView *bgView;



@end
