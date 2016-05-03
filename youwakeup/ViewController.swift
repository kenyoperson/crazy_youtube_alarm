//
//  ViewController.swift
//  youwakeup
//
//  Created by Kenneth Dabis on 4/29/16.
//  Copyright © 2016 Kenneth Dabis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var videoView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = "https://www.youtube.com/embed/Rg6GLVUnnpM?rel=0&autoplay=1"
        
        videoView.allowsInlineMediaPlayback = true
        
        videoView.loadHTMLString("<iframe width=\"560\" height=\"315\" src=\"\(url)/&autoplay=1\" frameborder=\"0\" allowfullscreen></iframe>", baseURL: nil)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func openVideo(sender: AnyObject) {
        if let url = NSURL(string: "https://youtu.be/OmBge5GWZ5Y?t=138") {
            let request = NSURLRequest(URL: url)
            videoView.loadRequest(request)
        }
    }

}

