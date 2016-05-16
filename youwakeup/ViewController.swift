//
//  ViewController.swift
//  youwakeup
//
//  Created by Kenneth Dabis on 4/29/16.
//  Copyright © 2016 Kenneth Dabis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet weak var websiteUrlInput: UITextField!
    
    @IBOutlet weak var videoView: UIWebView!
    
    
    
    override func viewDidLoad() {
        
    var videoLink = websiteUrlInput.text
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = "https://www.google.com"
        
        videoView.allowsInlineMediaPlayback = true
        
        //videoView.loadHTMLString("<iframe width=\"560\" height=\"315\" src=\"\(url)/&autoplay=1\" frameborder=\"0\" allowfullscreen></iframe>", baseURL: nil)
        
        videoView.loadHTMLString("<iframe width=\"100\" height=\"450\" scrolling=\"no\" frameborder=\"no\" src=\"\(url)/auto_play=true\"></iframe>"
            , baseURL: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func openVideo(sender: AnyObject) {
        if let url = NSURL(string: "https://www.google.com") {
            let request = NSURLRequest(URL: url)
            videoView.loadRequest(request)
            
        
            //https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/237603952&amp&auto_play=true
        }
    }
    
    @IBAction func WebsiteUrlAction(sender: AnyObject) {
        
        if let input = websiteUrlInput.text {
            websiteUrlInput.text = input
        }

        
    }

}









