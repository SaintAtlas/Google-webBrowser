//
//  ViewController.swift
//  webBrowser
//
//  Created by Grant Farmer on 9/27/18.
//  Copyright © 2018 Grant Farmer. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var myWebView: WKWebView!
    
    @IBAction func back(_ sender: Any) {
        if myWebView.canGoBack {
            myWebView.goBack()
        }
    }
    @IBAction func refresh(_ sender: Any)
    {
        myWebView.reload()
    }
    @IBAction func next(_ sender: Any) {
        if myWebView.canGoForward {
            myWebView.goForward()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myWebView.load(URLRequest(url: URL(string: "https://www.google.com")!))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // dispose of any resources that can be created
    }

}

