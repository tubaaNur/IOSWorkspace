//
//  ViewController.swift
//  ButtonWork
//
//  Created by Tuba Nur  on 15.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sliderLabel: UISlider!
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var TextFieldButton: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        indicator.isHidden = true
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
    @IBAction func buttonone(_ sender: Any) {
        indicator.startAnimating()
        indicator.isHidden = false
    }
    @IBAction func buttontwo(_ sender: Any) {
        indicator.startAnimating()
        indicator.isHidden = true
    }
}

