//
//  ViewController.swift
//  Notification Center
//
//  Created by Tuba Nur  on 13.08.2023.
//

import UIKit

extension Notification.Name {
    static let bildirimAdi = Notification.Name("benimYayin")
    
}

class ViewController: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(self.yap(Notification:)), name: .bildirimAdi, object: nil)
        
    }

    @objc func yap(Notification: NSNotification){
        let gelenMesaj = Notification.userInfo?["mesaj"]
        let gelenTarih = Notification.userInfo?["tarih"]
        let gelenNesne = Notification.userInfo?["nesne"] as! Kisiler
        
        labelSonuc.text = "\(gelenNesne.name) - \(gelenTarih!) - \(gelenMesaj!)"
        
    }

}

