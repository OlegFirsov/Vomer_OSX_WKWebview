//
//  ViewController.swift
//  VOMER
//
//  Created by MAC  on 15.12.16.
//  Copyright © 2016 vomer. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController {
    
   //@IBOutlet weak var view: NSView!
   
    var webView: WKWebView?
    
    override func loadView() {
        super.loadView()
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let webView:WKWebView = WKWebView(frame: CGRect(x: 0.0, y: 0.0, width: view.bounds.width, height: view.bounds.height))
        //let webView:WKWebView = WKWebView(frame: view.bounds)
        //webView.navigationDelegate = self;
        webView.autoresizingMask = [NSAutoresizingMaskOptions.ViewWidthSizable, NSAutoresizingMaskOptions.ViewHeightSizable]
        let url = NSURL(string: "https://vomer.com.ua")!
        let req = NSURLRequest(URL:url)
        webView.loadRequest(req)
        self.view.addSubview(webView)
        
    }

    override func viewDidLayout() {
        
    }
    
    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

