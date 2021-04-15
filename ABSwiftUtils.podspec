Pod::Spec.new do |s|
  s.name                    = 'ABSwiftUtils'
  s.version                 = '0.1.2'
  s.summary                 = 'ABSwiftUtils'
  s.description             = <<-DESC
    Swift Utilities
                              DESC
  s.swift_version           = '5.0'
  s.homepage                = 'https://github.com/jobdev-aiden/abswiftutils'
  # s.screenshots             = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license                 = { :type => 'MIT', :file => 'LICENSE' }
  s.author                  = { 'Aiden' => 'aiden.jobdev@gmail.com' }
  s.source                  = { :git => 'https://github.com/jobdev-aiden/abswiftutils.git', :tag => s.version.to_s }
  # s.social_media_url        = 'https://twitter.com/<TWITTER_USERNAME>'
  s.ios.deployment_target   = '9.0'
  s.source_files            = 'ABSwiftUtils/Classes/**/*'
  # s.resource_bundles        = {
  #   'ABSwiftUtils' => ['ABSwiftUtils/Assets/*.png']
  # }
  # s.public_header_files     = 'Pod/Classes/**/*.h'
  # s.frameworks              = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
