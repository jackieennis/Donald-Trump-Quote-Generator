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
    
    @IBOutlet weak var quoteTextLabel: UILabel!

    var quoteURL = NSURL()
    var buttonAudioPlayer = AVAudioPlayer()
    var index = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func linkToRegister(sender: AnyObject) {
        if let url = NSURL(string: "https://www.usa.gov/register-to-vote") {
            UIApplication.sharedApplication().openURL(url)
        }
        
    }
    @IBAction func playAudio(sender: AnyObject) {
        if index > 13 {
            index = 1
        }
        let quoteToPlay = Quote(index: index)
        quoteURL = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(quoteToPlay.fileName, ofType: "mp3")!)
        do {
            try buttonAudioPlayer = AVAudioPlayer(contentsOfURL: quoteURL)
            if(buttonAudioPlayer.playing == true)
            {
                buttonAudioPlayer.stop()
            }
            quoteTextLabel.text = quoteToPlay.text
            buttonAudioPlayer.play()
            index += 1
        } catch {
            print("Cannot play audio)")
        }

    }
}

