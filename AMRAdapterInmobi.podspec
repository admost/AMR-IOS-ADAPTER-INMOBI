Pod::Spec.new do |s|
  s.name             = 'AMRAdapterInmobi'
  s.version          = '9.1.7.0'
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
  s.vendored_libraries = 'AMRAdapterInmobi/Libs/libAMRAdapterInmobi.a'
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64 x86_64' }
  s.dependency 'AMRSDK', '~> 1.4.62'
  s.dependency 'InMobiSDK/Core', '9.1.7'
end