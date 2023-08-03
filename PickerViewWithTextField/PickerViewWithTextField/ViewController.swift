//
//  ViewController.swift
//  PickerViewWithTextField
//
//  Created by Tuba Nur  on 3.08.2023.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {
  
    
    @IBOutlet weak var tfCountry: UITextField!
    
    var pickerView : UIPickerView?
    var countries = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countries = ["Türkiye", "Almanya", "Belçika", "Hollanda", "Rusya"]
        pickerView = UIPickerView()
        pickerView?.dataSource = self
        pickerView?.delegate = self
        tfCountry.inputView = pickerView
        
        let toolbar = UIToolbar()
        toolbar.tintColor = UIColor.red
        toolbar.sizeToFit()
        
        let okayButton = UIBarButtonItem(title: "Okay", style: .plain, target: self, action: #selector(ViewController.OkClick))
        
        let spaceButton = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
        
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(self.cancelClick))
        
        toolbar.setItems([cancelButton,okayButton,spaceButton], animated: true)
        
        tfCountry.inputAccessoryView = toolbar
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countries.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return countries[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        tfCountry.text = countries[row]
    }
    
    @objc func OkClick(){
        tfCountry.text = ""
        tfCountry.placeholder = "Select Country"
        view.endEditing(true)
    }
    
    @objc func cancelClick(){
        view.endEditing(true)
    }


}

