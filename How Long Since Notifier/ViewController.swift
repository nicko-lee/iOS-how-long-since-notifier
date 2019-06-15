//
//  ViewController.swift
//  How Long Since Notifier
//
//  Created by Nicko Lee on 6/13/19.
//  Copyright © 2019 Nicko Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Properties
    @IBOutlet weak var timeDisplayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.timeDisplayLabel.text = whatTime() + whatDate()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // my own functions
    func whatTime()-> String{
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .medium
        let timeString = "The time is: \(dateFormatter.string(from: NSDate() as Date))"
        return timeString
    }
    
    func whatDate()-> String{
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        let result = formatter.string(from: date)
        return result
    }
    
//    func dateDifference()-> String{
//        let start = "2010-09-01"
//        let end = "2010-09-05"
//        
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "yyyy-MM-dd"
//        
//        let startDate:NSDate = dateFormatter.date(from: start)! as NSDate
//        let endDate:NSDate = dateFormatter.date(from: end)! as NSDate
//        
//        let cal = NSCalendar.current
//        
//        
//        let unit:NSCalendar.Unit = .day
//        
//        let components = cal.components(unit, fromDate: startDate, toDate: endDate, options: nil)
//        
//        return components
//        
//    let d = Date()
//        
//        
//    }


}

