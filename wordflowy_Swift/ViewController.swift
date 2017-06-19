//
//  ViewController.swift
//  wordflowy_Swift
//
//  Created by Htrucci on 2017. 6. 19..
//  Copyright © 2017년 Htrucci. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var myWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myWebView.delegate = self;
        //loadWebPage(url: "https://workflowy.com");
        let myHtmlBundle = Bundle.main;
        let htmlFilePath = myHtmlBundle.path(forResource: "htmlView", ofType: "html");
        loadWebPage(url: htmlFilePath!);
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func loadWebPage(url: String){
        let myUrl = NSURL(string: url);
        let myRequest = NSURLRequest(url: myUrl! as URL);
        myWebView.loadRequest(myRequest as URLRequest);
    }
    
    
}

