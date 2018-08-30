//
//  DesignableView.m
//  secondWife
//
//  Created by yogya naga vamsi on 28/02/18.
//  Copyright © 2018 yogya naga vamsi. All rights reserved.
//

#import "DesignableView.h"

@implementation DesignableView

-(instancetype) initWithCoder:(NSCoder *)aDecoder{
    
    if (self = [super initWithCoder:aDecoder]) {
        
        
    }
    return self;
}

-(void)setCornerRadius:(NSInteger)cornerRadius{
    
    self.layer.cornerRadius = cornerRadius;
    self.clipsToBounds = YES;
}

@end
