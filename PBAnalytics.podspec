Pod::Spec.new do |s|
  s.name             = 'PBAnalytics'
  s.version          = '1.5.4.1'
  s.summary          = 'Analytics related functionality for Photo Butler powered apps.'

  s.description      = <<-DESC
  The goal is crafting a Pod that has all requirements for the tracking and Analysis. The included libraries are as follows:
  Mixpanel
                       DESC

  s.homepage         = 'https://github.com/PBMain'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Dan Spencer' => 'danspencer@photobutler.com' }
  s.source           = { :git => 'https://github.com/PBMain/PBAnalytics.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.3'

  #s.source_files = 'PBAnalytics/Classes/**/*'
  
  s.frameworks = 'AdSupport'
  s.ios.vendored_frameworks = 'PBFrameworkAnalytics.framework'
  s.libraries = 'c++', 'z'
  s.dependency 'Mixpanel'
  
  
end
