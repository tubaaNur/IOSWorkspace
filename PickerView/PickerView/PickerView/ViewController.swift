//
//  ViewController.swift
//  PickerView
//
//  Created by Tuba Nur  on 2.08.2023.
//

import UIKit

class ViewController: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource{

    @IBOutlet weak var pickerView: UIPickerView!
    
    @IBOutlet weak var tfResult: UILabel!
    
    var countries = [String] ()
    override func viewDidLoad() {
        super.viewDidLoad()
        countries = ["Türkiye","Almanya","Rusya","İtalya"]
        pickerView.delegate = self
        pickerView.dataSource = self
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
        tfResult.text = countries[row]
    }
    
    
}

