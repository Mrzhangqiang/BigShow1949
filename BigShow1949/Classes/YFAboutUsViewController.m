//
//  YFAboutUsViewController.m
//  BigShow1949
//
//  Created by 杨帆 on 15-9-4.
//  Copyright (c) 2015年 BigShowCompany. All rights reserved.
//

#import "YFAboutUsViewController.h"

@interface YFAboutUsViewController ()

@end

@implementation YFAboutUsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"关于我们";
    self.view.backgroundColor = [UIColor whiteColor];
    
}

- (void)viewWillAppear:(BOOL)animated {

    [super viewWillAppear:animated];
    
    UITextView *aboutUs = [[UITextView alloc] init];
    NSString *viewText = @"     突然想总结点东西, 所以搞了个QQ群, 一起写一个APP, 涵盖主要知识点、动画、小项目,亦可成为开发者手中的速查手册。请加群:148279151(iOS高手在民间), 进群要求:1、需上传自己的个人作品, 可以是关于某个知识点, 或者是自己从网上找的一些不错的例子; 2、尽可能写全注释, 减少其他人阅读代码的时间; 3、为调用大家积极性,丰富app内容,进群作品请发邮箱:1029883589@qq.com";
    aboutUs.editable = NO;
    aboutUs.backgroundColor = [UIColor lightGrayColor];
    aboutUs.frame = CGRectMake(0, 0, 300, 350);
    aboutUs.center = CGPointMake(YFScreen.width/2, YFScreen.height/2);
    [self.view addSubview:aboutUs];
    
    // 设置行间距
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineSpacing = 10;
    NSDictionary *attributes = @{
                                 NSFontAttributeName:[UIFont systemFontOfSize:18],
                                 NSParagraphStyleAttributeName:paragraphStyle
                                 };
    aboutUs.attributedText = [[NSAttributedString alloc] initWithString:viewText attributes:attributes];
    
}


@end
