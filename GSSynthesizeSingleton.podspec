Pod::Spec.new do |s|
  s.name         = 'GSSynthesizeSingleton'
  s.version      = '2.0.5'
  s.author       = 'GyazSquare'
  s.license      = { :type => 'MIT' }
  s.homepage     = 'https://github.com/GyazSquare/GSSynthesizeSingleton'
  s.source       = { :git => 'https://github.com/GyazSquare/GSSynthesizeSingleton.git', :tag => '2.0.5' }
  s.summary      = 'A simple macro for an Objective-C singleton class.'
  s.ios.deployment_target = '2.0'
  s.osx.deployment_target = '10.0'
  s.watchos.deployment_target = '2.0'
  s.source_files = 'GSSynthesizeSingleton/*.{h,m}'
end
