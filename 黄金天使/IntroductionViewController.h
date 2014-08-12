//
//  IntroductionViewController.h
//  黄金天使
//
//  Created by Cartman on 14-8-7.
//  Copyright (c) 2014年 Cartman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StyledPageControl.h"
@interface IntroductionViewController : UIViewController<UIScrollViewDelegate>
{
    
}
@property (weak, nonatomic) IBOutlet UIScrollView *contentView;
@property (weak, nonatomic) UIImageView *katanaView;
@property (weak, nonatomic) UITextView *textView;
@property (weak, nonatomic) UITextView *historyTextView;
@property (weak, nonatomic) UITextView *personalityTextView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;
@end
