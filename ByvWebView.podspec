#
# Be sure to run `pod lib lint ByvWebView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ByvWebView'
  s.version          = '1.0.3'
  s.summary          = 'UIViewController with UIWebView'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
If the webview should load any link with the same host it create another ByvWebViewController with this request URL to generate an "UINavigationViewController history". If the link is external it load with UIApplication.shared.openURL(request.url!).
                       DESC

  s.homepage         = 'https://github.com/byvapps/ByvWebView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Adrian' => 'adrian@byvapps.com' }
  s.source           = { :git => 'https://github.com/byvapps/ByvWebView.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/byvapps'

  s.ios.deployment_target = '8.0'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }

  s.source_files = 'ByvWebView/Classes/**/*'
end
