//
//  SMPagerTabView.h
//  SMPagerTab
//
//  Created by ming on 15/7/4.
//  Copyright (c) 2015年 starming. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIViewAdditions.h"

@protocol SMPagerTabViewDelegate;

@interface SMPagerTabView : UIView<UIScrollViewDelegate>

@property (nonatomic, weak) id<SMPagerTabViewDelegate> delegate;

@property (nonatomic, assign) CGFloat tabFrameHeight; //头部tab高
@property (nonatomic, strong) UIColor* tabBackgroundColor; //头部tab背景颜色
@property (nonatomic, assign) CGFloat tabButtonFontSize; //头部tab按钮字体大小
@property (nonatomic, assign) CGFloat tabMargin; //头部tab左右两端和边缘的间隔
@property (nonatomic, assign) UIColor* tabButtonTitleColorForNormal;
@property (nonatomic, assign) UIColor* tabButtonTitleColorForSelected;
@property (nonatomic, assign) CGFloat selectedLineWidth; //下划线的宽

/*!
 * @brief 自定义完毕后开始build UI
 */
- (void)buildUI;
/*!
 * @brief 控制选中tab的button
 */
- (void)selectTabWithIndex:(NSUInteger)index animate:(BOOL)isAnimate;
- (void)showRedDotWithIndex:(NSUInteger)index;
- (void)hideRedDotWithIndex:(NSUInteger)index;
@end

@protocol SMPagerTabViewDelegate <NSObject>
@required
- (NSUInteger)numberOfPagers:(SMPagerTabView *)view;
- (UIViewController *)pagerViewOfPagers:(SMPagerTabView *)view indexOfPagers:(NSUInteger)number;
@optional
/*!
 * @brief 切换到不同pager可执行的事件
 */
- (void)whenSelectOnPager:(NSUInteger)number;
@end
