//
//  ViewController.h
//  maskView
//
//  Created by wangjixiao on 2018/8/29.
//  Copyright © 2018年 王吉笑. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

+(void)action1;
+(void)actionWithTitle1:(NSString *)title1;

+ (void)action2;
+ (void)actionWithTitle2:(NSString *)title2;

+ (void)action3;
+ (void)actionWithTitle3:(NSString *)title3;

+ (void)actionWithTitle3:(NSString *)title3 test:(NSString *)test;
+ (void)actionWithTitle3:(NSString *)title3
                    test:(NSString *)test;


-(void)action1;
-(void)actionWithTitle1:(NSString *)title1;

- (void)action2;
- (void)actionWithTitle2:(NSString *)title2;

- (void)action3;
- (void)actionWithTitle3:(NSString *)title3;

- (void)actionWithTitle3:(NSString *)title3 test:(NSString *)test;
- (void)actionWithTitle3:(NSString *)title3
                    test:(NSString *)test;



@end

