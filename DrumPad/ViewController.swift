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
    
    var audioPlayerUser = AVAudioPlayer()
    @IBOutlet weak var SongLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    var isPlaying = false
    var timer:Timer!
    var arrSongs = ["Lil Nas X - Old Town Road (feat. Billy Ray Cyrus) [Remix]", "Sunflower (Spider-Man Into the Spider-Verse)", "Post Malone - Wow. (Clean - Lyrics)"]
    
    var audioPlayer1: AVAudioPlayer?
    var audioPlayer2: AVAudioPlayer?
    var audioPlayer3: AVAudioPlayer?
    var audioPlayer4: AVAudioPlayer?
    var audioPlayer5: AVAudioPlayer?
    var audioPlayer6: AVAudioPlayer?
    var audioPlayer7: AVAudioPlayer?
    var audioPlayer8: AVAudioPlayer?
    var audioPlayer9: AVAudioPlayer?
    @IBOutlet weak var segControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SongLabel.text = "Lil Nas X - Old Town Road (feat. Billy Ray Cyrus) [Remix]"
        let soundURL = Bundle.main.url(forResource: "Lil Nas X - Old Town Road (feat. Billy Ray Cyrus) [Remix]", withExtension: "mp3")
        do {
            audioPlayerUser = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
    }
    
    @objc func updateTime() {
        let currentTime = Int(audioPlayerUser.currentTime)
        let minutes = currentTime/60
        let seconds = currentTime - minutes * 60
        
        timeLabel.text = String(format: "%02d:%02d", minutes,seconds) as String
    }
    
    @IBAction func stopButtonClicked(_ sender: Any) {
        audioPlayerUser.stop()
        audioPlayerUser.currentTime = 0
        isPlaying = false
    }
    
    func stopAndGo(num: Int) {
        audioPlayerUser.stop()
        audioPlayerUser.currentTime = 0
        isPlaying = false
        let soundURL = Bundle.main.url(forResource: arrSongs[num], withExtension: "mp3")
        do {
            audioPlayerUser = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
    }
    
    @IBAction func songSlider(_ sender: Any) {
        switch segControl.selectedSegmentIndex
        {
        case 0:
            SongLabel.text = "Lil Nas X - Old Town Road (feat. Billy Ray Cyrus) [Remix]"
            stopAndGo(num: 0)
        case 1:
            SongLabel.text = "Sunflower (Spider-Man Into the Spider-Verse)"
            stopAndGo(num: 1)
        case 2:
            SongLabel.text = "Post Malone - Wow. (Clean - Lyrics)"
            stopAndGo(num: 2)
        default:
            break
        }
    }
    
    
    @IBAction func playButtonClicked(_ sender: Any) {
        if isPlaying {
            audioPlayerUser.pause()
            isPlaying = false
        } else {
            audioPlayerUser.play()
            isPlaying = true
            
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
        }
    }
    
    @IBAction func SquareOne(_ sender: Any) {
        let soundURL = Bundle.main.url(forResource: "clap-808", withExtension: "wav")
        do {
            audioPlayer1 = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer1?.play()
    }
    
    @IBAction func SquareTwo(_ sender: Any) {
        let soundURL = Bundle.main.url(forResource: "crash-808", withExtension: "wav")
        do {
            audioPlayer2 = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer2?.play()
    }
    
    @IBAction func SquareThree(_ sender: Any) {
        let soundURL = Bundle.main.url(forResource: "crash-acoustic", withExtension: "wav")
        do {
            audioPlayer3 = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer3?.play()
    }
    
    @IBAction func SquareFour(_ sender: Any) {
        let soundURL = Bundle.main.url(forResource: "hihat-acoustic01", withExtension: "wav")
        do {
            audioPlayer4 = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer4?.play()
    }
    
    @IBAction func SquareFive(_ sender: Any) {
        let soundURL = Bundle.main.url(forResource: "kick-808", withExtension: "wav")
        do {
            audioPlayer5 = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer5?.play()
    }
    
    @IBAction func SquareSix(_ sender: Any) {
        let soundURL = Bundle.main.url(forResource: "perc-hollow", withExtension: "wav")
        do {
            audioPlayer6 = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer6?.play()
    }
    
    @IBAction func SquareSeven(_ sender: Any) {
        let soundURL = Bundle.main.url(forResource: "ride-acoustic02", withExtension: "wav")
        do {
            audioPlayer7 = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer7?.play()
    }
    
    @IBAction func SquareEight(_ sender: Any) {
        let soundURL = Bundle.main.url(forResource: "shaker-shuffle", withExtension: "wav")
        do {
            audioPlayer8 = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer8?.play()
    }
    
    @IBAction func SquareNine(_ sender: Any) {
        let soundURL = Bundle.main.url(forResource: "tom-chiptune", withExtension: "wav")
        do {
            audioPlayer9 = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer9?.play()
    }
}

