//
//  BaseViewController.m
//  黄金天使
//
//  Created by Cartman on 14-8-9.
//  Copyright (c) 2014年 Cartman. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)setupViewWithImages:(NSArray *)images andTexts:(NSArray *)texts;
{
    for (int i = 0; i<_numOfPages; i++)
    {
        
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.contentView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    self.contentView.pagingEnabled = YES;
    [self.view addSubview:self.contentView];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
