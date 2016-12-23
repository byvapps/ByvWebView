//
//  ByvWebViewController.swift
//  camionapp
//
//  Created by Adrian Apodaca on 22/12/16.
//  Copyright © 2016 CamionApp. All rights reserved.
//

import UIKit

public class ByvWebViewController: UIViewController, UIWebViewDelegate {
    var webView: UIWebView = UIWebView()
    private var firstTime:Bool = true
    public var displayTitle:String? = nil
    
    public var urlStr:String? = nil
    

    override public func viewDidLoad() {
        super.viewDidLoad()
        
        webView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(webView)
        let views = ["webView": webView]
        var allConstraints = [NSLayoutConstraint]()
        
        let verticalConstraints = NSLayoutConstraint.constraints(
            withVisualFormat: "V:|-0-[webView]-0-|",
            options: [],
            metrics: nil,
            views: views)
        allConstraints += verticalConstraints
        
        let horizontalConstraints = NSLayoutConstraint.constraints(
            withVisualFormat: "H:|-0-[webView]-0-|",
            options: [],
            metrics: nil,
            views: views)
        allConstraints += horizontalConstraints
        
        self.view.addConstraints(allConstraints)
        
//        NSLayoutConstraint.activate(allConstraints)
        
        
        webView.delegate = self
        
        if let str = urlStr, let url = URL(string: str) {
            webView.loadRequest(URLRequest(url: url))
        }
        
        if let t = displayTitle {
            self.navigationItem.title = t
        }
    }
    
    public func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        if firstTime || navigationType != .linkClicked {
            return true
        }
        if request.url?.host == URL(string: urlStr!)?.host {
            let vc:ByvWebViewController = ByvWebViewController()
            vc.urlStr = request.url!.absoluteString;
            self.navigationController?.pushViewController(vc, animated: true)
        } else {
            UIApplication.shared.openURL(request.url!)
        }
        return false
    }
    
    public func webViewDidFinishLoad(_ webView: UIWebView) {
        firstTime = false
        if displayTitle == nil {
            self.navigationItem.title = webView.stringByEvaluatingJavaScript(from: "document.title")
        }
    }

}
