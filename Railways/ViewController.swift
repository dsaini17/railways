//
//  ViewController.swift
//  Railways
//
//  Created by dsaini on 19/09/21.
//

import UIKit
import WebKit
class ViewController: UIViewController, WKUIDelegate {
   var webView: WKWebView!
   override func viewDidLoad() {
      super.viewDidLoad()
    
//    let preferences = WKWebPagePreferences()
//    preferences.allowContentJavaScript = true
//    let configuration = WKWebViewConfiguration()
//    configuration.preferences = preferences
//    webView = WKWebView(frame: view.bounds, configuration: configuration)
//        view.addSubview(webView)
    
      NSLog("Attempting to open url")
      let myURL = URL(string:"https://insiderailways.com/")
      let myRequest = URLRequest(url: myURL!)
    
      // enable JS
      // webView.configuration.preferences.javaScriptEnabled = true
    
      webView.load(myRequest)
      NSLog("URL loaded")
   }
   override func loadView() {
      let webConfiguration = WKWebViewConfiguration()
      webView = WKWebView(frame: .zero, configuration: webConfiguration)
      webView.uiDelegate = self
      view = webView
   }
}
