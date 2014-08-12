//
//  BaseViewController.h
//  黄金天使
//
//  Created by Cartman on 14-8-9.
//  Copyright (c) 2014年 Cartman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController
@property (strong, nonatomic) UIScrollView *contentView;
@property (assign, nonatomic) CGSize contentSize;
@property (assign, nonatomic) NSInteger numOfPages;
@end
