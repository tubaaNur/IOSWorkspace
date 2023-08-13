//
//  ViewController.swift
//  Notification
//
//  Created by Tuba Nur  on 13.08.2023.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
//Uygulama ilk çalıştığı anda bildirim almayı soracaksın.
    var izinKontrol:Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UNUserNotificationCenter.current().requestAuthorization(options:[.alert, .sound, .badge],completionHandler: {(granted,error) in
            self.izinKontrol = granted
            if granted{
                print("İzin alma başarılı")
            }
            else{
                print("İzin alma başarısız")
            }
        })
        
    }


}

