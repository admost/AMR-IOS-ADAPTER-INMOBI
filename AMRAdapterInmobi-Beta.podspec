Pod::Spec.new do |s|
  s.name             = 'AMRAdapterInmobi-Beta'
  s.version          = '10.0.6.0'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
														Copyright 2016
														Admost Mediation Limited.
														LICENSE
														}
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'Inmobi adapter for AMR SDK.'
  s.description      = 'AMR Inmobi adapter allows publishers to mediate Inmobi banner, native, interstitial and video ads in AMR SDK.'

  s.source           = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-INMOBI.git',
 								 :tag => s.version.to_s
 								}
  s.documentation_url = 'https://admost.github.io/amrios/'
  s.platform 			= :ios
  s.ios.deployment_target = '9.0'
  s.vendored_frameworks = 'AMRAdapterInmobi/Libs/AMRAdapterInmobi.xcframework'
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64 x86_64' }
  s.dependency 'AMRSDK-Beta', '~> 1.5.6'
  s.dependency 'InMobiSDK/Core', '10.0.6'
end
