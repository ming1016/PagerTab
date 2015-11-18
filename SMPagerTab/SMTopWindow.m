//
//  SMTopWindow.m
//  WeiboOffline
//
//  Created by DaiMing on 15/9/6.
//  Copyright (c) 2015年 starming. All rights reserved.
//

#import "SMTopWindow.h"
#import <UIKit/UIKit.h>

@implementation SMTopWindow

static UIWindow *topWinow;

+ (void)initialize {
    topWinow = [[UIWindow alloc] init];
    topWinow.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 20);
    topWinow.windowLevel = UIWindowLevelAlert;
    [topWinow addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(winTap)]];
}

+ (void)work {
    topWinow.hidden = NO;
}

//点击时
+ (void)winTap {
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    [self seachScrollViewInView:window];
}

//递归搜索所有view查找当前位置合适的scroll view
+ (void)seachScrollViewInView:(UIView *)view {
    for (UIScrollView *subView in view.subviews) {
        if ([subView isKindOfClass:[UIScrollView class]] && [self isCurrentShowView:subView]) {
            //开始进行滚动
            CGPoint offset = subView.contentOffset;
            offset.y = -subView.contentInset.top;
            [subView setContentOffset:offset animated:YES];
        }
        //寻找子视图的子视图
        [self seachScrollViewInView:subView];
    }
}

//根据位置判断是否合适
+ (BOOL)isCurrentShowView:(UIView *)view {
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    CGRect currentFrame = [keyWindow convertRect:view.frame fromView:view.superview];
    CGRect winBounds = keyWindow.bounds;
    BOOL intersects = CGRectIntersectsRect(currentFrame, winBounds);
    return !view.isHidden && view.alpha > 0.01 && view.window == keyWindow && intersects;
    
}
@end
