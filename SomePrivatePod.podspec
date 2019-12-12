Pod::Spec.new do |s|
   s.name         = 'SomePrivatePod'
   s.version      = '5.3.2'
   s.summary      = 'SomePrivatePod.'
 
   s.description  = 'SomePrivatePod.'
 
   s.homepage     = 'http://SomePrivatePod.com'
   s.license      = 'Apache License, Version 2.0'
   s.author       = { 'SomePrivatePod' => 'SomePrivatePod' }
   s.source       = { :git => 'https://github.com/iKleMiX/SomePrivatePod.git',
                      :tag => s.version}
   s.ios.deployment_target = '9.0'
   s.requires_arc          = true
   s.ios.frameworks            = 'UIKit', 'QuartzCore', 'WebKit'

   s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }
 
   s.default_subspec       = 'Core'

   s.subspec 'Core' do |core|
		core.libraries = 'z', 'c++'
		core.ios.frameworks = 'UIKit', 'WebKit', 'QuartzCore', 'SystemConfiguration', 'CoreTelephony'
		core.ios.weak_frameworks = 'UserNotifications', 'StoreKit'
		core.osx.frameworks = 'AppKit', 'WebKit', 'QuartzCore', 'SystemConfiguration'
		core.osx.weak_frameworks = 'StoreKit'

      core.ios.dependency 'AWSPinpoint', '2.6.28'
   end
   
   s.subspec 'More' do |more|
      more.ios.vendored_libraries   = 'Libraries/libSomePrivatePod.a'
      more.source_files         		= 'Libraries/include/SomePrivatePod/*.h'

      more.dependency 'SomePrivatePod/Core'
      more.dependency 'Google-Mobile-Ads-SDK', '7.51.0'
 end
 