#
# Be sure to run `pod lib lint VollMedUI.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'VollMedUI'
  s.version          = '0.1.2'
  s.summary          = 'Design system module user in the Vollmed app'

  s.description      = "Design system module user in the Vollmed app used in the development of the iOS app. It contains all the components and styles used in the app, making it easy to maintain a consistent look and feel across the app. The module is built using SwiftUI and is designed to be easily integrated into any iOS app."

  s.homepage         = 'https://github.com/er7santana/swiftui-vollmed-ui'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'er7santana' => 'er.7santana@gmail.com' }
  s.source           = { :git => 'https://github.com/er7santana/swiftui-vollmed-ui.git', :tag => s.version.to_s }

  s.ios.deployment_target = '16.0'
  s.swift_version = '5.0'

  s.source_files = 'VollMedUI/Classes/**/*'
  
  # s.resource_bundles = {
  #   'VollMedUI' => ['VollMedUI/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
