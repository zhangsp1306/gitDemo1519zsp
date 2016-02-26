//
//  UIView+GetViewFrame.h
//  BGLife
//
//  Created by zsp on 16/2/25.
//  Copyright © 2016年 张书鹏. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (GetViewFrame)
/**
 *  返回屏幕的宽
 *
 *  @return 屏幕的宽
 */
CGFloat screenWidth();

/**
 *  返回屏幕的高
 *
 *  @return 屏幕的高
 */
CGFloat screenHeight();

/**
 *  计算视图的宽
 *
 *  @param view 当前视图
 *
 *  @return 视图的宽
 */
CGFloat width(UIView *view);

/**
 *  计算视图的高
 *
 *  @param view 当前视图
 *
 *  @return 视图的高
 */
CGFloat height(UIView *view);

/**
 *  计算视图最大的 X
 *
 *  @param view  当前视图
 *
 *  @return 最大的 X
 */
CGFloat maxX(UIView *view);

/**
 *  计算视图最小的 X
 *
 *  @param view  当前视图
 *
 *  @return 最小的 X
 */
CGFloat minX(UIView *view);

/**
 *  计算视图最大的 Y
 *
 *  @param view  当前视图
 *
 *  @return 最大的 Y
 */
CGFloat maxY(UIView *view) ;

/**
 *  计算视图最小的 Y
 *
 *  @param view  当前视图
 *
 *  @return 最小的 Y
 */
CGFloat minY(UIView *view);

@end
