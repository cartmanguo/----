//
//  TipsViewController.m
//  黄金天使
//
//  Created by Cartman on 14-8-9.
//  Copyright (c) 2014年 Cartman. All rights reserved.
//

#import "TipsViewController.h"

@interface TipsViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *contentView;
@property (weak, nonatomic) IBOutlet UIView *tipsView1;
@property (weak, nonatomic) IBOutlet UIView *tipsView2;
@property (weak, nonatomic) IBOutlet UIView *tipsView3;
@end

@implementation TipsViewController

- (void)setupViews
{
    self.tipsView1.frame = _contentView.frame;
    self.tipsView2.frame = CGRectMake(_contentView.frame.size.width, 0, _contentView.frame.size.width, _contentView.frame.size.height);
    self.tipsView3.frame = CGRectMake(_contentView.frame.size.width*2, 0, _contentView.frame.size.width, _contentView.frame.size.height);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.contentView.delegate = self;
    self.contentView.pagingEnabled = YES;
    if(IS_4INCH_DEVICE)
    {
        self.contentView.contentSize = CGSizeMake(_contentView.frame.size.width*3, _contentView.frame.size.height-64);
    }
    else
    {
        self.contentView.contentSize = CGSizeMake(_contentView.frame.size.width*3, self.view.frame.size.height-64);
    }
    [self setupViews];

}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

@end
