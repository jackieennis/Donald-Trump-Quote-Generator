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

    var quote = NSURL()
    
    var buttonAudioPlayer = AVAudioPlayer()
    
    func generateRandomQuote() -> String {
        let randPicker = Int(arc4random_uniform(14))
        var currentQuote = String()
        switch randPicker {
        case 1:
            currentQuote = "nowhere"
        case 2:
            currentQuote = "mexican"
        case 3:
            currentQuote = "love"
        case 4:
            currentQuote = "knees"
        case 5:
            currentQuote = "ladies"
        case 6:
            currentQuote = "pay"
        case 7:
            currentQuote = "missUSA"
        case 8:
            currentQuote = "muslim"
        case 9:
            currentQuote = "wall"
        case 10:
            currentQuote = "loan"
        case 11:
            currentQuote = "rapists"
        case 12:
            currentQuote = "tremendous"
        case 13:
            currentQuote = "univision"
        default:
            currentQuote = "rapists"
        }
        return currentQuote
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playAudio(sender: AnyObject) {
        let quotePicked = self.generateRandomQuote()
        quote = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(quotePicked, ofType: "mp3")!)
        do {
            try buttonAudioPlayer = AVAudioPlayer(contentsOfURL: quote)
            if(buttonAudioPlayer.playing == true)
            {
                buttonAudioPlayer.stop()
            }
            buttonAudioPlayer.play()
        } catch {
            print("Cannot play audio)")
        }

    }
}

