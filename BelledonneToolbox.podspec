Pod::Spec.new do |s|
  s.name = 'BelledonneToolbox'
  s.version = '1.0.0'
  s.summary = 'Linphone for Swift'
  s.license = 'MIT'
  s.authors = { "Alsey Coleman Miller" => "colemancda.github.io" }
  s.homepage = 'http://github.com/coleman/LinPhoneSwift'
  s.description = 'Swift library for Linphone'
  s.requires_arc = true
  s.ios.deployment_target  = '8.0'
  s.osx.deployment_target  = '10.10'
  s.source = { :path => '*' }
  s.source_files = 'Sources/BelledonneToolbox/*.swift'
  s.ios.vendored_frameworks = '$SRCROOT/../liblinphone-sdk/iOS/apple-darwin/Frameworks/*.framework'
  s.xcconfig = { 
    'ENABLE_BITCODE' => 'NO', 
    'SWIFT_INCLUDE_PATHS' => '$SRCROOT/../liblinphone-sdk/iOS/apple-darwin/include', 
    'FRAMEWORK_SEARCH_PATHS' => '$SRCROOT/../liblinphone-sdk/iOS/apple-darwin/Frameworks', 
    'OTHER_LDFLAGS' => '-framework bctoolbox'
  }
end