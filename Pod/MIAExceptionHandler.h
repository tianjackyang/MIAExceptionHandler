//
//  MIAExceptionHandler.h
//  MIACorpUMSApp
//
//  Created by 杨鹏 on 16/3/19.
//  Copyright © 2016年 上海名扬科技股份有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MIAExceptionHandler : NSObject

+ (void)startExceptionHandler;
+ (void)handleException;

@end
