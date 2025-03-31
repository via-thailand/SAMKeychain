Pod::Spec.new do |spec|
  spec.name         = 'ViaSAMKeychain'
  spec.version      = '1.5.12'
  spec.description  = 'Simple Cocoa wrapper for the keychain that works on OS X, iOS, tvOS, and watchOS.'
  spec.summary      = 'Simple Cocoa wrapper for the keychain.'
  spec.homepage     = 'https://github.com/soffes/samkeychain'
  spec.author       = { 'Sam Soffes' => 'sam@soff.es' }
  spec.source       = { :git => 'https://github.com/via-thailand/SAMKeychain.git', :tag => "v#{spec.version}" }
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }

   spec.pod_target_xcconfig = {
    'VALID_ARCHS' => 'arm64 x86_64',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
   }
   spec.user_target_xcconfig = {
    'VALID_ARCHS' => 'arm64 x86_64',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
   }

  spec.source_files = 'Sources/*.{h,m}'
  spec.resources = 'Support/SAMKeychain.bundle'

  spec.frameworks = 'Security', 'Foundation'
  spec.ios.deployment_target = '10.0'
end
