# WMHUD
WMHUD是基于MBProgressHUD二次开发的消息提示库，封装了常用的消息提示方法，简化使用操作
### 用法
'' //弹出消息
''[WMHUD showMessage:@"Hellow world" toView:self.view];
'' 
'' //弹出加载动画
''[WMHUD showIndicatorToView:self.view];
''
'' //弹出带消息的加载动画
''[WMHUD showIndicatorWithMessage:@"Hellow world" toView:self.view];
'' 
'' //弹出成功消息
''[WMHUD showSuccessWithMessage:@"Success" toView:self.view];
''
''//弹出失败消息
''[WMHUD showFailWithMessage:@"Fail" toView:self.view];
