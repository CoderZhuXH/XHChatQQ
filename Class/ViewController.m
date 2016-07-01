//
//  ViewController.m
//  XHChatQQExample
//
//  Created by xiaohui on 16/6/7.
//  Copyright © 2016年 qiantou. All rights reserved.
//  代码地址:https://github.com/CoderZhuXH/XHChatQQ

#import "ViewController.h"
#import "XHChatQQ.h"

@interface ViewController ()

@property(nonatomic,strong)UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"iOS调用QQ客户端发起临时会话";
    
}
- (IBAction)chatQQ:(UIButton *)sender {
    
    
    //1.请在info.plist文件中 将QQ(mqq字段)添加到白名单
    //设置方法:在info.plist添加LSApplicationQueriesSchemes 类型Array 2.在此Array中添加一个 item 值设为:mqq 即可
    
    if([XHChatQQ haveQQ])//是否有安装QQ客户端
    {
        
        //2.此处传入的QQ号,需开通QQ推广功能,不然"陌生人"无法向此QQ号发送临时消,(发送时会直接失败).
        //开通QQ推广方法:1.打开QQ推广网址http://shang.qq.com并用QQ登录  2.点击顶部导航栏:推广工具  3.在弹出菜单中点击'立即免费开通' 即可
        
        [XHChatQQ chatWithQQ:@"1099779883"];//发起QQ临时会话
    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"温馨提示" message:@"您的设备尚未安装QQ客户端,不能进行QQ临时会话" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
    }
    
    //注意事项:
    //1.由于'开发文档'中规定app的正常使用不能依赖其他APP,<br>所以在项目中集成此功能的童鞋要注意,<br>在未安装QQ客户端时建议影藏此功能,<br>不然上架有被拒风险.
    //2.我前期上架一个app,便是这样处理的.
    //3.若还有不清楚同学,可以查看我简书上一篇文章:文章地址 http://www.jianshu.com/p/ac4981b634c2
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
