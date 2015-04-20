//
//  ViewController.swift
//  Web Browser
//
//  Created by Denis Aleksandrov on 4/20/15.
//  Copyright (c) 2015 Denis Aleksandrov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate, UITextFieldDelegate {
    
    @IBOutlet var webView: UIWebView?
    @IBOutlet var textField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let myURL = NSURL(string:"http://cnn.com")
        let myRequest = NSURLRequest(URL: myURL!)
        webView!.loadRequest(myRequest)
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = true
    }

    func webViewDidFinishLoad(webView: UIWebView) {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = false
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func textDone() {
        let typedURL = textField.text
        if typedURL.isEmpty {
            return
        }
        
        let newURL = NSURL(string: typedURL)
        let myRequest = NSURLRequest(URL: newURL!)
        webView!.loadRequest(myRequest)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

