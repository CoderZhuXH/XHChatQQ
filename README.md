# XHChatQQ
* 一行代码调用QQ客户端,发起临时会话.

## 效果
![image]()
## 使用方法
#### 1.请在info.plist文件中 将QQ(`mqq`字段)添加到白名单
*    1.设置方法:在info.plist添加`LSApplicationQueriesSchemes`字段 类型`Array`<br>
     2.在此Array中添加一个 item 值设为:`mqq`
#### 2.用来接收临时消息的QQ号需开通 QQ推广功能 ,不然接收消息会不成功
*    1.开通方式:打开QQ推广网址http://shang.qq.com并用QQ登录<br>
     2.点击顶部导航栏:推广工具<br>
     3.在弹出菜单中点击'立即免费开通'即可
#### 3.导入XHChatQQ.h 头文件,调用下面方法
```objc
    //是否安装QQ
    if([XHChatQQ haveQQ])
    {
        //传入用来接收临时消息的QQ号码
        //调用QQ客户端,发起QQ临时会话
        [XHChatQQ chatWithQQ:@"1099779883"];
    }
```
##注意事项
##### 1.由于 开发文档 中有规定 app的正常使用不能依赖其他APP,<br>所以在项目中集成此功能的童鞋要注意,<br>在未安装QQ客户端时建议影藏此功能,<br>不然上架有被拒风险. <br>    2.我前期上架一个App,便是这样处理的.
##  安装
### 手动添加:<br>
*   1.将 XHChatQQ 文件夹添加到工程目录中<br>
*   2.导入 XHChatQQ.h

### CocoaPods:<br>
*   1.在 Podfile 中添加 pod 'XHChatQQ'<br>
*   2.执行 pod install 或 pod update<br>
*   3.导入 XHChatQQ.h

##  系统要求
*   该项目最低支持 iOS 7.0 和 Xcode 7.0

##  许可证
XHChatQQ 使用 MIT 许可证，详情见 LICENSE 文件