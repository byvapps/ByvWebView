//
//  ViewController.swift
//  ByvWebView
//
//  Created by Adrian on 12/23/2016.
//  Copyright (c) 2016 Adrian. All rights reserved.
//

import UIKit
import ByvWebView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let vc = ByvWebViewController()
        vc.urlStr = "http://escueladeltrueque.com/about-app"
        vc.displayTitle = "About"
        
        let nav = UINavigationController(rootViewController: vc)
        
        self.present(nav, animated: false, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

