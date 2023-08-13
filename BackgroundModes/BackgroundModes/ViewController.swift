//
//  ViewController.swift
//  BackgroundModes
//
//  Created by Tuba Nur  on 13.08.2023.
//

import UIKit
import AVFoundation //ses dosyalarını oynatmak için gerekli olan sınıflara erişimi sağlar

class ViewController: UIViewController {

    var voicePlay = AVAudioPlayer() // bu nesne ile başla durdur gibi aksiyonları gerçekleştiricez
    override func viewDidLoad() {
        super.viewDidLoad()
        do{
            let dosyaYolu = Bundle.main.path(forResource: "music", ofType: ".mp3")
            voicePlay = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: dosyaYolu!))
            voicePlay.prepareToPlay()
        }
        catch{
            print(error.localizedDescription)
        }
    }


    @IBAction func playButton(_ sender: Any) {
        voicePlay.play()
    }
    @IBAction func stopButton(_ sender: Any) {
        voicePlay.stop()
    }
  
}

