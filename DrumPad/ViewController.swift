//
//  ViewController.swift
//  DrumPad
//
//  Created by Singam Setty, Kireeti on 4/30/19.
//  Copyright © 2019 Singam Setty, Kireeti. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {

    var audioPlayer: AVAudioPlayer?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func SquareOne(_ sender: Any) {
        playSound(soundFileName: "Basic_Rock_135")
    }
    
    @IBAction func SquareTwo(_ sender: Any) {
        playSound(soundFileName: "Drum1")
    }
    
    @IBAction func SquareThree(_ sender: Any) {
        playSound(soundFileName: "Drum3")
    }
    
    @IBAction func SquareFour(_ sender: Any) {
        playSound(soundFileName: "Drum5")
    }
    
    @IBAction func SquareFive(_ sender: Any) {
        playSound(soundFileName: "Drum7")
    }
    
    @IBAction func SquareSix(_ sender: Any) {
        playSound(soundFileName: "Drum9")
    }
    
    @IBAction func SquareSeven(_ sender: Any) {
        playSound(soundFileName: "Drum11")
    }
    
    @IBAction func SquareEight(_ sender: Any) {
        playSound(soundFileName: "Drum13")
    }
    
    @IBAction func SquareNine(_ sender: Any) {
        playSound(soundFileName: "Drum15")
    }
    
    func playSound(soundFileName : String) {
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "mp3")

        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer?.play()
    }
}

