//
//  ViewController.swift
//  Toolbar work
//
//  Created by Tuba Nur  on 15.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etiket: UILabel!
    
    @IBAction func HomeButton(_ sender: UIBarButtonItem) {
        etiket.text = "Home"
    }
    
    @IBAction func PlayButton(_ sender: Any) {
        etiket.text = "Play"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

}

