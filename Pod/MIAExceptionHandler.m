//
//  MIAExceptionHandler.m
//  MIACorpUMSApp
//
//  Created by 杨鹏 on 16/3/19.
//  Copyright © 2016年 上海名扬科技股份有限公司. All rights reserved.
//

#import "MIAExceptionHandler.h"

void onUncaughtException(NSException* exception)
{
    NSLog(@"Crash: %@", exception);
    NSLog(@"Stack Trace: %@", [exception callStackSymbols]);
    
    [MIAExceptionHandler handleException];
}

@implementation MIAExceptionHandler

+ (void)startExceptionHandler
{
#if !DEBUG
    NSSetUncaughtExceptionHandler(&onUncaughtException);
#endif
}

+ (void)handleException
{
    //上传错误信息到服务器
}

@end
