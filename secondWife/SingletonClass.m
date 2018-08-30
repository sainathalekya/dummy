//
//  SingletonClass.m
//  secondWife
//
//  Created by yogya naga vamsi on 26/02/18.
//  Copyright © 2018 yogya naga vamsi. All rights reserved.
//

#import "SingletonClass.h"

@implementation SingletonClass

+(id)sharedPulse{
    
    static SingletonClass*pulse=nil;
    
    static dispatch_once_t onceToken;
    
    dispatch_once (&onceToken, ^{
        
        pulse=[[self alloc]init];
        
    });
    
    return pulse;
}

-(instancetype)init{
    
    self=[super init];
    
    if (self) {
        
        NSLog(@"singleton is ready to use");
        
        self.itemNamesArray=[[NSMutableArray alloc]init];
        self.itemRatesArray=[[NSMutableArray alloc]init];
    }
    
    return self;
}



@end
