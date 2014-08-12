//
//  FoodViewController.m
//  黄金天使
//
//  Created by Cartman on 14-8-12.
//  Copyright (c) 2014年 Cartman. All rights reserved.
//

#import "FoodViewController.h"

@interface FoodViewController ()
{
    NSArray *items;
}
@property (strong, nonatomic) UITextView *page1View;
@property (strong, nonatomic) UITextView *page2View;
@property (strong, nonatomic) UITextView *page3View;
@property (strong, nonatomic) UITextView *page4View;
@property (strong, nonatomic) UITextView *page5View;
@property (strong, nonatomic) UITextView *page6View;
@property (strong, nonatomic) NSMutableArray *textViews;
@end

@implementation FoodViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    items = [NSArray arrayWithObjects:@"1.食物选择",@"2.幼犬喂养",@"3.禁用食物" ,nil];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    if(IS_4INCH_DEVICE)
    {
        self.contentView.contentSize = CGSizeMake(_contentView.frame.size.width*3, _contentView.frame.size.height-64);
    }
    else
    {
        self.contentView.contentSize = CGSizeMake(_contentView.frame.size.width*3, self.view.frame.size.height-64);
    }

    self.contentView.pagingEnabled = YES;
    self.textViews = [NSMutableArray arrayWithCapacity:6];
    for (int i = 0; i<3; i++)
    {
        UITextView *textView = [[UITextView alloc] init];
        textView.editable = NO;
        textView.font = [UIFont fontWithName:@"Courier" size:15];
        textView.textColor = [UIColor blackColor];
        textView.frame = CGRectMake(_contentView.frame.size.width*i, 20, _contentView.frame.size.width, _contentView.frame.size.height-20);
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, textView.frame.size.width, textView.frame.size.height)];
        imageView.image = [UIImage imageNamed:@"sleep"];
        [textView addSubview: imageView];
        [textView sendSubviewToBack: imageView];
        [self.contentView addSubview:textView];
        [_textViews addObject:textView];
        UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60+_contentView.frame.size.width*i, 0, 200, 20)];
        titleLabel.text = items[i];
        titleLabel.textAlignment = NSTextAlignmentCenter;
        [self.contentView addSubview:titleLabel];
    }
    self.page1View = _textViews[0];
    self.page1View.text = @"    不论是幼犬还是成犬，狗粮都是狗狗最主要的食物。狗粮的好处有：\n    1、营养全面这里所说的营养全面并非指狗粮的蛋白质和脂肪含量如何丰富，而是说狗粮中所含有的蛋白质、脂肪、碳水化合物、矿物质、维生素及微量元素的配比合理。无论是哪种品牌的狗粮都能提供犬每日所需的各种基本营养。如果是高档次的狗粮还会增加一般食物中含量很低的不饱和脂肪酸和酵素等物质，能促进犬毛发的生长及消化道健康。狗粮的各种原料需要几十种甚至上百种，一般主人所烹制的食物很难达到如此全面的营养需要，所以长期以狗粮为主的犬在骨骼的坚韧度，毛发的质量和体重的标准程度都大大优于偏食的犬。\n\n    2、牙齿健康可以从两个年龄齿阶段上看出明显的差别，在幼犬期，如果牙齿的生长得不到大量钙质的保证，那么乳齿就会生长缓慢，在4—5月龄时恒齿可能不会很好发育，而且牙质会受到明显的影响，牙釉质发黄，甚至小块脱落。狗粮经过膨化处理，松脆但又有一定的硬度，有一定的清洁及锻炼牙齿的作用。不吃狗粮的犬在中老年阶段牙结石和掉牙的情况会远远高于吃狗粮的犬。\n\n    3、粪便相对稳定。以狗粮为主食，配以少量的水果及零食，食物相对稳定，不易引起腹泻。狗粮中配以适量的粗纤维及灰分，能有效促进消化道蠕动，使犬大便通畅，在一定程度上起到预防肛门腺炎的作用。\n\n    4、长期饲喂狗粮的犬不易引起厌食。很多人认为长期给犬吃一种食品有些残忍。但他们同时忽略了一个问题，那就是犬的智力最多只能达到4~5岁儿童的水平。所以想让它们像成人一样强迫自己经常吃一些有营养但不好吃的东西是不太现实的。所以小狗往往吃习惯了纯肉、纯肝就不太接受其他食物了。有很多主人都有这样的经历，碰到小狗食欲不好时就想方设法变换肉类食物，今天吃鸡腿，明天吃猪肝，后天吃牛肉，慢慢他们就会发现犬越吃越少，好像任何食物都提不起它们的胃口。如果从幼年时期开始饲喂狗粮，或中途改喂的话，就要在平时主人进餐的时候狠起心来，不要再饲喂其他食物。让犬养成好的饮食习惯，这样它们就会慢慢养成不挑吃、不厌食的行为。";
    self.page2View = _textViews[1];
    self.page2View.text = @"    对于幼犬期的金毛，应选用针对幼犬的狗粮，因为里面包含对幼犬发育有益的营养物。三个月前的小金毛，一天应喂4次，早、中、晚和睡前各一次。注意由于幼犬的牙齿发育不完全，喂狗粮的时候需要先用温水将狗粮泡软之后，在拿给狗狗吃。食物旁边再放一盆水，狗狗需要充足的水分。三至六个月的幼犬一天喂三次，六个月以后一天喂二次，成年了一天喂一次即可，成长期间注意补钙和微量元素";
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
