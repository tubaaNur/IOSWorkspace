//
//  ViewController.swift
//  BasicAlert
//
//  Created by Tuba Nur  on 29.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelsSonuc: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showBasicAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        let iptalAction = UIAlertAction(title: "Cancel", style: .cancel){
            action in
            print(" İptale tıklandı")
        }
        alertController.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive){
            action in
            print("tamam a tıklandı")
        }
        alertController.addAction(tamamAction)
        self.present(alertController, animated: true)
    }
    
    @IBAction func showSpecialAlert(_ sender: Any) {
    }
    
    @IBAction func showAlertSheet(_ sender: Any) {
    }
}

