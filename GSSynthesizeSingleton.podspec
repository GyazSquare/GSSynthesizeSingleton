Pod::Spec.new do |s|
  s.name         = 'GSSynthesizeSingleton'
  s.version      = '4.0.0'
  s.author       = 'GyazSquare'
  s.license      = { :type => 'MIT' }
  s.homepage     = 'https://github.com/GyazSquare/GSSynthesizeSingleton'
  s.source       = { :git => 'https://github.com/GyazSquare/GSSynthesizeSingleton.git', :tag => 'v4.0.0' }
  s.summary      = 'A simple macro for an Objective-C singleton class.'
  s.ios.deployment_target = '4.0'
  s.osx.deployment_target = '10.6'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'
  s.source_files = 'GSSynthesizeSingleton/*.{h,m}'
end
