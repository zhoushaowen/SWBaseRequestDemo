Pod::Spec.new do |s|

  s.name         = "SWBaseRequest"

  s.version      = "1.0.0"

  s.homepage      = 'https://github.com/zhoushaowen/SWBaseRequest'

  s.ios.deployment_target = '9.0'

  s.summary      = "基于YTKNetwork的网络封装"

  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.author       = { "Zhoushaowen" => "348345883@qq.com" }

  s.source       = { :git => "https://github.com/zhoushaowen/SWBaseRequestDemo.git", :tag => s.version }
  
  s.source_files  = "SWBaseRequestDemo/SWBaseRequest/*.{h,m}"
  
  s.requires_arc = true

  s.dependency 'YTKNetwork'

end