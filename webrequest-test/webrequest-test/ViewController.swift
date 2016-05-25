//
//  ViewController.swift
//  webrequest-test
//
//  Created by Dan Hyunchan Kim on 3/8/16.
//  Copyright © 2016 hyunchan. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var container: UIView!
    var webview: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webview = WKWebView()
        container.addSubview(webview)
    }
    
    override func viewDidAppear(animated: Bool) {
        let frame = CGRectMake(0, 0, container.bounds.width, container.bounds.height)
        webview.frame = frame

        loadrequest("https://developer.apple.com/swift/blog")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadrequest(urlStr: String)
    {
        let url = NSURL(string: urlStr)!
        let request = NSURLRequest(URL: url)
        webview.loadRequest(request)
    }

    @IBAction func swiftPressed(sender: AnyObject) {
        loadrequest("https://developer.apple.com/swift/blog")
    }
    
    @IBAction func gossipPressed(sender: AnyObject) {
        loadrequest("https://google.com")
    }
    
    @IBAction func steakPressed(sender: AnyObject) {
        loadrequest("http://www.tmz.com")
    }
    

}

