//
//  XHChatQQ.m
//  XHChatQQExample
//
//  Created by xiaohui on 16/6/7.
//  Copyright © 2016年 qiantou. All rights reserved.
//  代码地址:https://github.com/CoderZhuXH/XHChatQQ

#import "XHChatQQ.h"

@interface XHChatQQ()

@end

@implementation XHChatQQ

+(BOOL)haveQQ
{
    return [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"mqq://"]];
}
+(void)chatWithQQ:(NSString *)QQ
{
    NSString *url = [NSString stringWithFormat:@"mqq://im/chat?chat_type=wpa&uin=%@&version=1&src_type=web",QQ];

    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];
}

@end
