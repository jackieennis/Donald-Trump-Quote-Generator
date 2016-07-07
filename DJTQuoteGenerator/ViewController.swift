//
//  ViewController.swift
//  DJTQuoteGenerator
//
//  Created by Jackie Ennis on 7/6/16.
//  Copyright © 2016 Jackie Ennis. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var bringingDrugs = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("bringingDrugs", ofType: "mp3")!)
    
    var buttonAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        do {
            try buttonAudioPlayer = AVAudioPlayer(contentsOfURL: bringingDrugs)
            buttonAudioPlayer.play()
        } catch {
            print("Cannot play file because \(error)")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playAudio(sender: AnyObject) {
    }
    
    
}

