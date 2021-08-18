Pod::Spec.new do |s|
   s.name         = 'SomePrivatePod'
   s.version      = '5.3.2'
   s.summary      = 'SomePrivatePod.'
 
   s.description  = 'SomePrivatePod.'
 
   s.homepage     = 'http://SomePrivatePod.com'
   s.license      = 'Apache License, Version 2.0'
   s.author       = { 'SomePrivatePod' => 'SomePrivatePod' }
   s.source       = { :git => 'https://github.com/iKleMiX/SomePrivatePod.git',
                      :branch => 'xcf' }
   s.ios.deployment_target = '9.0'
   s.osx.deployment_target = '10.11  '
   s.requires_arc          = true
   s.ios.frameworks            = 'UIKit', 'QuartzCore', 'WebKit'
 
   s.vendored_frameworks   = 'TestLib.xcframework'
end