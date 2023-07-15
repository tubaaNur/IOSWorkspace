//
//  ViewController.swift
//  ButtonWork
//
//  Created by Tuba Nur  on 15.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sliderLabel: UISlider!
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var TextFieldButton: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func ButtonAct(_ sender: Any) {
        if let data = TextFieldButton.text{
            Label.text = data
        }
    }
    @IBAction func clicks(_ sender: Any) {
    }
    @IBAction func slidercontrol(_ sender: Any) {
    }
}

