# WJXConfusion
    
## 介绍
    代码混淆,小概率避免被逆向!

## 版本
    1.0.2
    
## 注意
    * 建议使用编译后,新建.h文件复制所有codeObfuscation代码,删除cocopods,不然容易被拒
    
## 引用cocopodS 

    source 'https://github.com/wangjixiao1992/WJXConfusion.git'
    platform :ios, '8.0'
    
    target 'TargetName' do
    pod 'WJXConfusion', '~> 1.0.2'
    end

## 演示
    在Xcode-->Target--->Build Phases--->添加Run Script
    $PROJECT_DIR/Pods/WJXConfusion/confuse.sh
    
    把你需要混淆的方法,加到func.list
    例如:
    sharedClient
   
                         
## 使用方式
    xcode执行的时候自动执行脚本
   
## 联系我们
    如有疑问请发送邮件.谢谢~
    15037535383@163.com


