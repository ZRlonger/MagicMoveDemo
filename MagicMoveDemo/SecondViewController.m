//
//  SecondViewController.m
//  MagicMoveDemo
//
//  Created by pconline on 2017/1/25.
//  Copyright © 2017年 pconline. All rights reserved.
//

#import "SecondViewController.h"
#import "MagicMoveTransition.h"
#import <objc/runtime.h>
#import "UIViewController+JXViewController.h"
#import "ThirdViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    ThirdViewController *vc = [[ThirdViewController alloc] init];
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [self.navigationController pushViewController:vc animated:YES];
//    });
}

-(void)dealloc{
    NSLog(@"second dealloc");
}

- (void)loadView{
    [super loadView];
    self.view.backgroundColor = [UIColor whiteColor];
    
    //图片A
    UIImageView *imageA = [[UIImageView alloc] initWithFrame:CGRectMake(50, 70, 128, 128)];
    [imageA setImage:[UIImage imageNamed:@"ameng"]];
    [self.view addSubview:imageA];
    
    //图片B
    UIImageView *imageB = [[UIImageView alloc] initWithFrame:CGRectMake(50, 200, 128, 128)];
    [imageB setImage:[UIImage imageNamed:@"bmeng"]];
    [self.view addSubview:imageB];

    //动画结束Views
    [self jx_setMagicMoveEndViews:@[imageA,imageB]];

}



@end
