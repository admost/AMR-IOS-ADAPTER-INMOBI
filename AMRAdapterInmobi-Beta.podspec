Pod::Spec.new do |s|
  s.name             = 'AMRAdapterInmobi-Beta'
  s.version          = '10.8.0.1'
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
  s.ios.deployment_target = '12.0'
  s.swift_versions = ['5']
  s.vendored_frameworks = 'AMRAdapterInmobi/Libs/AMRAdapterInmobi.xcframework'
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64 x86_64' }
  s.dependency 'AMRSDK-Beta', '~> 1.5.55'
  s.dependency 'InMobiSDK', '10.8.0'
end
