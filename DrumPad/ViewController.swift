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

    var audioPlayer1: AVAudioPlayer?
    var audioPlayer2: AVAudioPlayer?
    var audioPlayer3: AVAudioPlayer?
    var audioPlayer4: AVAudioPlayer?
    var audioPlayer5: AVAudioPlayer?
    var audioPlayer6: AVAudioPlayer?
    var audioPlayer7: AVAudioPlayer?
    var audioPlayer8: AVAudioPlayer?
    var audioPlayer9: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func SquareOne(_ sender: Any) {
        let soundURL = Bundle.main.url(forResource: "Basic_Rock_135", withExtension: "mp3")
        do {
            audioPlayer1 = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer1?.play()
    }
    
    @IBAction func SquareTwo(_ sender: Any) {
        let soundURL = Bundle.main.url(forResource: "Drum1", withExtension: "mp3")
        do {
            audioPlayer2 = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer2?.play()
    }
    
    @IBAction func SquareThree(_ sender: Any) {
        let soundURL = Bundle.main.url(forResource: "Drum3", withExtension: "mp3")
        do {
            audioPlayer3 = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer3?.play()
    }
    
    @IBAction func SquareFour(_ sender: Any) {
        let soundURL = Bundle.main.url(forResource: "Drum5", withExtension: "mp3")
        do {
            audioPlayer4 = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer4?.play()
    }
    
    @IBAction func SquareFive(_ sender: Any) {
        let soundURL = Bundle.main.url(forResource: "Drum7", withExtension: "mp3")
        do {
            audioPlayer5 = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer5?.play()
    }
    
    @IBAction func SquareSix(_ sender: Any) {
        let soundURL = Bundle.main.url(forResource: "Drum9", withExtension: "mp3")
        do {
            audioPlayer6 = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer6?.play()
    }
    
    @IBAction func SquareSeven(_ sender: Any) {
        let soundURL = Bundle.main.url(forResource: "Drum11", withExtension: "mp3")
        do {
            audioPlayer7 = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer7?.play()
    }
    
    @IBAction func SquareEight(_ sender: Any) {
        let soundURL = Bundle.main.url(forResource: "Drum13", withExtension: "mp3")
        do {
            audioPlayer8 = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer8?.play()
    }
    
    @IBAction func SquareNine(_ sender: Any) {
        let soundURL = Bundle.main.url(forResource: "Drum15", withExtension: "mp3")
        do {
            audioPlayer9 = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer9?.play()
    }
}

