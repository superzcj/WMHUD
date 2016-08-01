//
//  ZCJHUD.h
//  Doctor
//
//  Created by zhangchaojie on 16/7/28.
//  Copyright © 2016年 zhangchaojie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/**
 *  ZCJHUD是基于二次开发的消息提示库，封装了常用方法，简化使用操作
 */
@interface WMHUD : NSObject

+ (void)showMessage:(NSString *)message toView:(UIView *)view;

+ (void)showIndicatorToView:(UIView *)view;

+ (void)showIndicatorWithMessage:(NSString *)message toView:(UIView *)view;

+ (void)showSuccessWithMessage:(NSString *)message toView:(UIView *)view;

+ (void)showFailWithMessage:(NSString *)message toView:(UIView *)view;

@end
