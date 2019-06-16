//
//  ViewController.swift
//  How Long Since Notifier
//
//  Created by Nicko Lee on 6/13/19.
//  Copyright © 2019 Nicko Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 1) MARK: Properties
    @IBOutlet weak var timeDisplayLabel: UILabel!
    @IBOutlet weak var timeIntervalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 2) Running my code
        var timeInterval = timeBetweenDates()
        self.timeDisplayLabel.text = whatTime() + whatDate() + "sdfsdfsdfsdfsdfsdfsdsdfsdfsdf"
        self.timeIntervalLabel.text = "Time elapsed: \(timeInterval.year!) years, \(timeInterval.month!) months and \(timeInterval.day!) days"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 3) My own functions
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
    
    // 4) Finally found something that worked from here www.stackoverflow.com/questions/40075850/swift-3-find-number-of-calendar-days-between-two-dates/40075983
    
    func timeBetweenDates()-> DateComponents{
        let startDate = "06/02/2017"
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        let formatedStartDate = dateFormatter.date(from: startDate)
        let currentDate = Date()
        let components = Set<Calendar.Component>([.second, .minute, .hour, .day, .month, .year])
        let differenceOfDate = Calendar.current.dateComponents(components, from: formatedStartDate!, to: currentDate)
        return differenceOfDate
    }
    

    
    



}

