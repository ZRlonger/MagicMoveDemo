//
//  ViewController.m
//  MagicMoveDemo
//
//  Created by pconline on 2017/1/25.
//  Copyright © 2017年 pconline. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "MagicMoveTransition.h"
#import "UINavigationController+JXNavigationController.h"
#import "UIViewController+JXViewController.h"
@interface ViewController ()

@property(nonatomic,strong) MagicMoveTransition *magicMove;
@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //图片A
    UIImageView *imageA = [[UIImageView alloc] initWithFrame:CGRectMake(10, 100, 32, 32)];
    [imageA setImage:[UIImage imageNamed:@"ameng"]];
    [self.view addSubview:imageA];
    
    //图片B
    UIImageView *imageB = [[UIImageView alloc] initWithFrame:CGRectMake(52, 100, 32, 32)];
    [imageB setImage:[UIImage imageNamed:@"bmeng"]];
    [self.view addSubview:imageB];
    
    //点击事件
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(click)];
    [self.view addGestureRecognizer:tap];
    
    //动画开始Views
    [self jx_setMagicMoveStartViews:@[imageA,imageB]];
}

-(void)click{
    SecondViewController *vc = [[SecondViewController alloc] init];
    _magicMove = [[MagicMoveTransition alloc] init];
    [self.navigationController pushViewController:vc animated:YES transition:_magicMove];
}


@end
