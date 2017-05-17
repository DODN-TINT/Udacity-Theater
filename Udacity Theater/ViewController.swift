//
//  ViewController.swift
//  Udacity Theater
//
//  Created by Andrew Miller on 5/17/17.
//  Copyright © 2017 AM Software Development. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet var containerView : UIView! = nil
    var webView: WKWebView?
    
    override func loadView() {
        super.loadView()
        let config = WKWebViewConfiguration()
        config.allowsInlineMediaPlayback = true
        config.allowsPictureInPictureMediaPlayback = true
        config.applicationNameForUserAgent = "Chrome Safari"
        UserDefaults.standard.register(defaults: ["UserAgent":"Crome Safari"])
        self.webView = WKWebView(frame: self.view.frame, configuration: config)
        self.view = self.webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string:"https://classroom.udacity.com")!
        let req = URLRequest(url:url)
        self.webView!.load(req)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

