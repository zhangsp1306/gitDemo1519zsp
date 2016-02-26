//
//  UIView+GetViewFrame.m
//  BGLife
//
//  Created by zsp on 16/2/25.
//  Copyright © 2016年 张书鹏. All rights reserved.
//

#import "UIView+GetViewFrame.h"

@implementation UIView (GetViewFrame)

CGFloat screenWidth(){
    return [[UIScreen mainScreen] bounds].size.width;
}

CGFloat screenHeight() {
    return [[UIScreen mainScreen] bounds].size.height;
}

CGFloat width(UIView *view) {
    return CGRectGetWidth(view.frame);
}

CGFloat height(UIView *view) {
    return CGRectGetHeight(view.frame);
}

CGFloat maxX(UIView *view) {
    return CGRectGetMaxX(view.frame);
}

CGFloat maxY(UIView *view) {
    return CGRectGetMaxY(view.frame);
}

CGFloat minX(UIView *view) {
    return CGRectGetMinX(view.frame);
}

CGFloat minY(UIView *view) {
    return CGRectGetMinY(view.frame);
}

@end
