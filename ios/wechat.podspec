#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'wechat'
  s.version          = '0.0.5'
  s.summary          = 'Wechat Plugin for Flutter app.'
  s.description      = "这是在 fltter 插件 'wechat' 上做出的修改,依赖版本为 '0.0.5',微信版本 为 1.8.4"
                       
  s.homepage         = 'https://github.com/pantao/flutter-wechat'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Pan Tao' => '54778899@qq.com' }
  s.source           = { :path => '.'}
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.vendored_libraries = 'Classes/wechatSDk/*.{a}'

  s.static_framework = true
  
  s.dependency 'Flutter'
  # s.dependency 'WechatOpenSDK'
  s.requires_arc = false
  s.frameworks = ["SystemConfiguration", "CoreTelephony","Security","CFNetwork","UIKit","CoreGraphics"]
  s.libraries = ["z", "sqlite3.0", "c++"]

  s.ios.deployment_target = '8.0'

  s.subspec 'WechatSDK' do |cs|
       cs.source_files = 'Classes/wechatSDk/*.{h,m}'
       cs.vendored_libraries = 'Classes/wechatSDk/*.{a}'
  end

end

