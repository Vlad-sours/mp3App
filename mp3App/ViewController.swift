//
//  ViewController.swift
//  mp3App
//
//  Created by Vlad on 5.6.23..
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var Sound: AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "1111.mp3", ofType:nil)!
        let url = URL(fileURLWithPath: path)

        do {
            Sound = try AVAudioPlayer(contentsOf: url)
            Sound?.play()
        } catch {
            // couldn't load file :(
        }
        // Do any additional setup after loading the view.
    }


}

