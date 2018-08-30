//
//  AppDelegate.h
//  secondWife
//
//  Created by yogya naga vamsi on 06/12/17.
//  Copyright © 2017 yogya naga vamsi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>


@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property NSMutableArray *billArr1;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

@property NSInteger btnTag;
@property NSString*btnTittle;

@property NSMutableArray *itemNamesArray;
@property NSMutableArray *itemRatesArray;

@property NSString* tableNumber;
@property BOOL enableTable;

- (void)saveContext;


@end

