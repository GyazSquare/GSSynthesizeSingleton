Pod::Spec.new do |s|
  s.name         = 'GSSynthesizeSingleton'
  s.version      = '2.0.0'
  s.summary      = 'A simple macro for an Objective-C singleton class.'
  s.homepage     = 'https://github.com/GyazSquare/GSSynthesizeSingleton'
  s.license      = { :type => 'MIT' }
  s.author       = 'GyazSquare'
  s.source       = { :git => 'https://github.com/GyazSquare/GSSynthesizeSingleton.git', :tag => '2.0.0' }
  s.source_files = 'GSSynthesizeSingleton/*.{h,m}'
  s.requires_arc = true
end
