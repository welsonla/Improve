//
//  ViewController.h
//  Improve
//
//  Created by 万业超 on 12-10-22.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property(strong) UITableView *listTable;
@property(strong) NSArray *listArray;

@end
