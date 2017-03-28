//
//  QYJTransitionAnimation.h
//  QYJSomeAnimation
//
//  Created by Avalanching on 2017/3/28.
//  Copyright © 2017年 Avalanching. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface QYJTransitionAnimation : NSObject <UIViewControllerAnimatedTransitioning>

@property (nonatomic, assign) BOOL isPresenting;

@end
