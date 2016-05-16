//
//  TimerViewController.swift
//  youwakeup
//
//  Created by Kenneth Dabis on 5/11/16.
//  Copyright © 2016 Kenneth Dabis. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {
    
    
    @IBOutlet weak var timerLabel: UILabel!

    @IBOutlet weak var timerPicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timerPicker.addTarget(self, action: Selector("timerPickerChanged:"), forControlEvents: UIControlEvents.ValueChanged)
        
    
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func timerPickerChanged(timerPicker:UIDatePicker) {
        var timerFormat = NSDateFormatter()
        
        timerFormat.dateStyle = NSDateFormatterStyle.ShortStyle
        timerFormat.timeStyle = NSDateFormatterStyle.ShortStyle
        
        var strDate = timerFormat.stringFromDate(timerPicker.date)
        timerLabel.text = strDate
        
    
    }
    
    @IBAction func startButton(sender: AnyObject) {
        let timerDate = NSTimer(fireDate: timerPicker.date, interval: 0, target: self, selector: "timeLabel", userInfo: nil, repeats: false)
        NSRunLoop.mainRunLoop().addTimer(timerDate, forMode: NSRunLoopCommonModes)
    }
    
    func timeLabel() {
        timerLabel.text = "ye"
        
        
    }
    
    
}
