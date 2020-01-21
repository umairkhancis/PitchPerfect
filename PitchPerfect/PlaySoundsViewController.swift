//
//  PlaySoundsViewController.swift
//  PitchPerfect
//
//  Created by Umair Khan on 1/20/20.
//  Copyright © 2020 NoorifyTech. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    @IBOutlet weak var playFastButton: UIButton!
    @IBOutlet weak var playSlowButton: UIButton!
    @IBOutlet weak var playHighButton: UIButton!
    @IBOutlet weak var playLowButton: UIButton!
    @IBOutlet weak var playEchoButton: UIButton!
    @IBOutlet weak var playReverbButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    var recordedAudioUrl: URL!
    var audioFile: AVAudioFile!
    var audioEngine: AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: Timer!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupAudio()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        configureUI(.notPlaying)
    }
    
    @IBAction func playFastButtonClicked(_ sender: Any!) {
        print("playFastButtonClicked")
        playSound(rate: 1.5)
        configureUI(.playing)
    }
    
    @IBAction func playSlowButtonClicked(_ sender: Any!) {
        print("playSlowButtonClicked")
        playSound(rate: 0.5)
        configureUI(.playing)
    }
    
    @IBAction func playHighButtonClicked(_ sender: Any!) {
        print("playHighButtonClicked")
        playSound(pitch: 1000)
        configureUI(.playing)
    }
    
    @IBAction func playLowButtonClicked(_ sender: Any!) {
        print("playLowButtonClicked")
        playSound(pitch: -1000)
        configureUI(.playing)
    }
    
    @IBAction func playEchoButtonClicked(_ sender: Any!) {
        print("playEchoButtonClicked")
        playSound(echo: true)
        configureUI(.playing)
    }
    
    @IBAction func playReverbButtonClicked(_ sender: Any!) {
        print("playReverbButtonClicked")
        playSound(reverb: true)
        configureUI(.playing)
    }
    
    @IBAction func stopButtonClicked(_ sender: Any!) {
        print("stopButtonClicked")
        stopAudio()
        configureUI(.notPlaying)
    }
}
