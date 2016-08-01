//
//  ZCJHUD.m
//  Doctor
//
//  Created by zhangchaojie on 16/7/28.
//  Copyright © 2016年 zhangchaojie. All rights reserved.
//

#import "WMHUD.h"
#import "MBProgressHUD.h"

@implementation WMHUD


+ (void)showMessage:(NSString *)message toView:(UIView *)view{
    
    [self showMessage:message toView:view withMode:MBProgressHUDModeText];
}


+ (void)showIndicatorToView:(UIView *)view{
    [self showMessage:nil toView:view withMode:MBProgressHUDModeIndeterminate ];
    [self showMessage:nil toView:view withMode:MBProgressHUDModeIndeterminate];
    
}

+ (void)showIndicatorWithMessage:(NSString *)message toView:(UIView *)view {
    [self showMessage:message toView:view withMode:MBProgressHUDModeIndeterminate];
}

+ (void)showSuccessWithMessage:(NSString *)message toView:(UIView *)view{
    UIImageView *imgIV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"37x-Checkmark"]];
    [self showMessage:message toView:view withMode:MBProgressHUDModeCustomView withCustomView:imgIV];
}

+ (void)showFailWithMessage:(NSString *)message toView:(UIView *)view{
    
    UIImageView *imgIV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"37x-Forkmark"]];
    [self showMessage:message toView:view withMode:MBProgressHUDModeCustomView withCustomView:imgIV];
    
}



+ (void)showMessage:(NSString *)message toView:(UIView *)view withMode:(MBProgressHUDMode)mode {
    [self showMessage:message toView:view withMode:mode withCustomView:nil];
}

+ (void)showMessage:(NSString *)message toView:(UIView *)view withMode:(MBProgressHUDMode)mode withCustomView:(UIView *)customView {
    
    MBProgressHUD * hud = [MBProgressHUD HUDForView:view];
    if (!hud) {
        hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    }
    if (customView) {
        hud.customView = customView;
    }
    hud.mode = mode;
    hud.labelText = message;
    hud.removeFromSuperViewOnHide = YES;
    [view addSubview:hud];
    [hud show:YES];
    
    [hud hide:YES afterDelay:1.5];
}

@end
