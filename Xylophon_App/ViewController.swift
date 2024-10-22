//
//  ViewController.swift
//  Xylophon_App
//
//  Created by Aisha Suanbekova Bakytjankyzy on 21.10.2024.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
        
    private var audio: AVPlayer?
    let sounds: [String] = ["A", "B", "C", "D", "E", "F", "G"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func soundPlayerButtons(_ sender: UIButton) {
        let selectedSound = sounds[sender.tag]
        playSound(sound: selectedSound)
    }
    
    
    func playSound(sound: String) {
        let soundURL = Bundle.main.url(forResource: sound, withExtension: ".wav")
        audio = AVPlayer(url: soundURL!)
        audio?.play()
    }
}

