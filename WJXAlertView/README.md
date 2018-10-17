# WJXAlertView
    
## 介绍
    此控件是自定义弹窗控件,只是为了项目需求,模仿苹果原生弹窗的弹窗视图,同样包含alert/sheet两种模式,只是为了统一弹窗!
## 版本
    1.0.6
    
## 引用cocopods
   
    source 'https://github.com/wangjixiao1992/WJXAlertView.git'
    platform :ios, '8.0'
    
    target 'TargetName' do
    pod 'WJXAlertView', '~> 1.0.6'
    end

## 演示代码
```swift

WJXAlertViewCtl *alert = [WJXAlertViewCtl alertControllerWithTitle:@"title"
                                                               message:@"content。"
                                                        preferredStyle:WJXAlertViewTypeAlert];
                                                        
WJXAlertAction *cancenAction = [WJXAlertAction actionWithTitle:@"cancel"
                                                         textColor:MAMainColor
                                                             style:WJXAlertActionTypeBold
                                                           handler:^(WJXAlertAction *action) {                       
                                    }];
    
[alert addAction:cancenAction];
[self.navigationController presentViewController:alert
                                            animated:YES
                                          completion:nil];
```
                         
## 联系我们
    如有疑问请发送邮件.谢谢~
    15037535383@163.com