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

@property (nonatomic, strong) UIPercentDrivenInteractiveTransition *interactivePopTransition;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    ThirdViewController *vc = [[ThirdViewController alloc] init];
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [self.navigationController pushViewController:vc animated:YES];
//    });
    self.navigationController.interactivePopGestureRecognizer.enabled = NO;
    
//    UIScreenEdgePanGestureRecognizer *popRecognizer = [[UIScreenEdgePanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePopRecognizer:)];
//    popRecognizer.edges = UIRectEdgeLeft;
//    [self.view addGestureRecognizer:popRecognizer];
}

-(void)click{
    NSLog(@"1111");
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

//-(void)handlePopRecognizer:(UIScreenEdgePanGestureRecognizer*)recognizer{
//    //计算用户拖动距离
//    CGFloat progress = [recognizer translationInView:self.view].x / (self.view.bounds.size.width * 1.0);
//    progress = MIN(1.0, MAX(0.0, progress));
//    NSLog(@"progress:%f",progress);
//    if (recognizer.state == UIGestureRecognizerStateBegan) {
//        self.interactivePopTransition = [[UIPercentDrivenInteractiveTransition alloc] init];
//        [self.navigationController popViewControllerAnimated:YES];
//    }
//    else if(recognizer.state == UIGestureRecognizerStateChanged){
//        [self.interactivePopTransition updateInteractiveTransition:progress];
//    }
//    else if(recognizer.state == UIGestureRecognizerStateEnded || recognizer.state == UIGestureRecognizerStateCancelled){
//        if (progress > 0.5) {
//            [self.interactivePopTransition finishInteractiveTransition];
//        }else{
//            [self.interactivePopTransition cancelInteractiveTransition];
//        }
//    
//        self.interactivePopTransition = nil;
//    }
//}

//-(id<UIViewControllerInteractiveTransitioning>)navigationController:(UINavigationController *)navigationController interactionControllerForAnimationController:(id<UIViewControllerAnimatedTransitioning>)animationController{
//    if ([animationController isKindOfClass:[self class]]) {
//        return self.interactivePopTransition;
//    }
//    return nil;
//}
@end
