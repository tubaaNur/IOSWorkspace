//
//  ViewController2.swift
//  Notification Center
//
//  Created by Tuba Nur  on 13.08.2023.
//

import UIKit

class ViewController2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func gonderbutton(_ sender: Any) {
        
        let kisi = Kisiler(name: "Tuba", age: "23")
        
        NotificationCenter.default.post(name: .bildirimAdi, object: nil, userInfo: ["mesaj": "merhaba", "tarih" : Date(),"nesne": kisi])
        dismiss(animated: true, completion: nil)
    }
}
