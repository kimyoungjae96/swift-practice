//
//  ViewController.swift
//  DatePicker
//
//  Created by crerar on 2021/01/08.
//  Copyright © 2021 youngjae. All rights reserved.
//

import UIKit

class DateViewController: UIViewController {
    
    let timeSelector: Selector = #selector(DateViewController.updateTime)
    let interval = 1.0
    var alarmTime:String?
    var currentTiem:String?
    var count = 0
    
    
    @IBOutlet var IblCurrentTime: UILabel!
    @IBOutlet var IblPickerTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        IblPickerTime.text = "선택시간: " + formatter.string(from: datePickerView.date)
        
        formatter.dateFormat = "hh:mm aaa"
        alarmTime = formatter.string(from: datePickerView.date)
    }
    
    @objc func updateTime() {
        
        let date = NSDate()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        IblCurrentTime.text = "현재시간 : " + formatter.string(from: date as Date)
        
        formatter.dateFormat = ("hh:mm aaa")
        let currentTime = formatter.string(from: date as Date)
        if(alarmTime == currentTime){
            view.backgroundColor = UIColor.red
        }else {
            view.backgroundColor = UIColor.white
        }
    }
}

