//
//  ViewController.swift
//  DatePickerView
//
//  Created by Tuba Nur  on 2.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfDate: UITextField!
    
   
    @IBOutlet weak var tfTime: UITextField!
    
    var datePicker:UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        tfDate.inputView = datePicker
        datePicker?.addTarget(self, action: #selector(self.dateShow(datePicker:)), for: .valueChanged)
    
    }
    
    @objc func dateShow(datePicker:UIDatePicker){
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        
        let giveDate = dateFormatter.string(from: datePicker.date)
        print(giveDate)
        tfDate.text = giveDate
        view.endEditing(true)
    }

}

