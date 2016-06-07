Pod::Spec.new do |s|
  s.name         = "XHChatQQ"
  s.version      = "1.0"
  s.summary      = "一行代码调用QQ客户端,发起临时会话"
  s.homepage     = "https://github.com/CoderZhuXH/XHChatQQ"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "Zhu Xiaohui" => "977950862@qq.com"}
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/CoderZhuXH/XHChatQQ.git", :tag => s.version }
  s.source_files = "XHChatQQ", "*.{h,m}"
  s.requires_arc = true
end
