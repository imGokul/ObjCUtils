#
# Be sure to run `pod lib lint ObjCUtils.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ObjCUtils'
  s.version          = '0.0.1'
  s.summary          = 'ObjC most commonly used utils as Categories'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Current version of ObjCUtils contain utility methods for NSObject, NSStirng, NSDate, UIColor
                       DESC

  s.homepage         = 'https://github.com/imGokul/ObjCUtils'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Gokulkrishnan Sivasubramaniam' => 'gokulkrishnan.sivasubramaniam@impigertech.com' }
  s.source           = { :git => 'https://github.com/imGokul/ObjCUtils.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'ObjCUtils/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ObjCUtils' => ['ObjCUtils/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
