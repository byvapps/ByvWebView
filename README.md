# ByvWebView

[![CI Status](http://img.shields.io/travis/Adrian/ByvWebView.svg?style=flat)](https://travis-ci.org/Adrian/ByvWebView)
[![Version](https://img.shields.io/cocoapods/v/ByvWebView.svg?style=flat)](http://cocoapods.org/pods/ByvWebView)
[![License](https://img.shields.io/cocoapods/l/ByvWebView.svg?style=flat)](http://cocoapods.org/pods/ByvWebView)
[![Platform](https://img.shields.io/cocoapods/p/ByvWebView.svg?style=flat)](http://cocoapods.org/pods/ByvWebView)

ByvWebViewController is an UIViewController with an UIWebView.

This view controller must be presented in an `UINavigationViewController`. If the webview should load any link with the same host it create another `ByvWebViewController` with this request URL to generate an "UINavigationViewController history". If the link is external it load with `UIApplication.shared.openURL(request.url!)`.

By default the `UINavigationItme.title` is set with `document.title` at `webViewDidFinishLoad`. If you want to put one manually you can set `displayTitle`.

## Usage
#Import
    import ByvWebView

#Use
    let vc = ByvWebViewController()
    vc.urlStr = "htttp://www.myurl.com"
    vc.displayTitle = "About"

    let nav = UINavigationController(rootViewController: vc)

    self.present(nav, animated: true, completion: nil)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

ByvWebView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "ByvWebView"
```

## Author

Adrian, adrian@byvapps.com

## License

ByvWebView is available under the MIT license. See the LICENSE file for more info.
