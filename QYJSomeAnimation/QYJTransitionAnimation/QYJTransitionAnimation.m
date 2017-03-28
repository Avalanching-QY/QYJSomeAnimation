//
//  QYJTransitionAnimation.m
//  QYJSomeAnimation
//
//  Created by Avalanching on 2017/3/28.
//  Copyright © 2017年 Avalanching. All rights reserved.
//

#import "QYJTransitionAnimation.h"


#define transformedEndFrame CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)

@implementation QYJTransitionAnimation

#pragma mark - UIViewControllerAnimatedTransitioning
//动画时长
- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerAnimatedTransitioning>)transitionContext {
    return 0.5;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext {
    UIViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    if (self.isPresenting) {
        [transitionContext.containerView addSubview:fromVC.view];
        [transitionContext.containerView addSubview:toVC.view];
        
        toVC.view.frame = CGRectZero;
        
        [UIView animateWithDuration:0.25 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
            toVC.view.frame = transformedEndFrame;
        } completion:^(BOOL finished) {
            [transitionContext completeTransition:YES];
        }];
    } else {
        [transitionContext.containerView addSubview:toVC.view];
        [transitionContext.containerView addSubview:fromVC.view];
        
    }
}


@end
