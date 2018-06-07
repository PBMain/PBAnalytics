Pod::Spec.new do |s|
  s.name             = 'PBAnalytics'
  s.version          = '1.0.1.1'
  s.summary          = 'A short description of PBAnalytics.'

  s.description      = <<-DESC
  The goal is crafting a Pod that has all requirements for the tracking and Analysis. The included libraries are as follows:
  FBSDKCoreKit (Facebook),
  Mixpanel,
  Intercom v4.1.9,
  GoogleAnalytics,
  Nanigans.
                       DESC

  s.homepage         = 'https://github.com/PBMain'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'philbelley' => 'pbelley@photobutler.com' }
  s.source           = { :git => 'https://github.com/PBMain/PBAnalytics.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.3'

  #s.source_files = 'PBAnalytics/Classes/**/*'
  
  s.ios.vendored_frameworks = 'PBFrameworkAnalytics.framework', 'NanigansSDK.framework', 'Intercom.framework'
  s.libraries = 'c++', 'z'
  s.dependency 'FBSDKCoreKit'
  s.dependency 'Mixpanel'
  
  
end
