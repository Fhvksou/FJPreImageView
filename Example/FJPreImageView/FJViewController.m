//
//  FJViewController.m
//  FJPreImageView
//
//  Created by Fhvksou on 01/16/2019.
//  Copyright (c) 2019 Fhvksou. All rights reserved.
//

#import "FJViewController.h"
#import "FJPreImageView.h"

@interface FJViewController ()

@end

@implementation FJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self initViews];
}

- (void)initViews{
    UIButton * btn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 50)];
    [btn addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn setTitle:@"测试" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
    btn.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2);
}

- (void)onClick{
    NSArray * arr = @[
                      @"http://tupian.qqjay.com/u/2017/1221/4_143339_28.jpg",
                      @"http://tupian.qqjay.com/u/2017/1221/4_143339_2.jpg",
                      @"http://image.biaobaiju.com/uploads/20180302/15/1519974868-yDhJvXEktV.jpg",
                      @"http://www.17qq.com/img_qqtouxiang/76911619.jpeg",
                      @"http://image.biaobaiju.com/uploads/20180802/00/1533140045-tMZXAFOzao.jpg",];
    
    FJPreImageView * imageVc = [[FJPreImageView alloc]init];
    
    [imageVc setLongTapPressBlock:^(UIImage * _Nonnull image) {
        NSLog(@"长按图片回调");
    }];
    
    [imageVc showPreView:[UIApplication sharedApplication].keyWindow urls:arr index:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
