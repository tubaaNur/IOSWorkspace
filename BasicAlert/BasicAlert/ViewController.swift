//
//  ViewController.swift
//  BasicAlert
//
//  Created by Tuba Nur  on 29.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showPasswordLabel: UILabel!
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
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        alertController.addTextField{textField in
            textField.placeholder = "Email"
            textField.keyboardType = .emailAddress
        }
        alertController.addTextField{textField in
            textField.placeholder = "Şifre"
            textField.isSecureTextEntry = true
        }
        
        
        let kaydetAction = UIAlertAction(title: "Kaydet", style: .destructive){
            action in
            print(" Kaydet tıklandı")
            
            let alinanEmail = (alertController.textFields![0] as UITextField).text!
            let alinanSifre = (alertController.textFields![1] as UITextField).text!
            
            self.labelsSonuc.text = "Email: \(alinanEmail)"
            self.showPasswordLabel.text = "Şifre: \(alinanSifre)"
        }
        
        alertController.addAction(kaydetAction)
        self.present(alertController, animated: true)
        
    }
    
    @IBAction func showAlertSheet(_ sender: Any) {
    }
}

