//
//  Quote.swift
//  DJTQuoteGenerator
//
//  Created by Jackie Ennis on 7/7/16.
//  Copyright © 2016 Jackie Ennis. All rights reserved.
//

import Foundation

class Quote {
    var fileName = String()
    var text = String()
    
    init (index: Int) {
        switch index {
        case 1:
          fileName = "nowhere"
          text = "Our current president came out of nowhere."
        case 2:
            fileName = "mexican"
            text = "I love the Mexican people."
        case 3:
            fileName = "love"
            text = "That's great, I love you too."
        case 4:
            fileName = "knees"
            text = "Must be a pretty picture, you dropping to your knees."
        case 5:
            fileName = "ladies"
            text = "Let's go ladies."
        case 6:
            fileName = "pay"
            text = "I will build a better wall, I will build it for cheaper, and Mexico will pay."
        case 7:
            fileName = "missUSA"
            text = "Miss Universe and Miss USA, I own it, they're here, they're gonna really do a number on me."
        case 8:
            fileName = "muslim"
            text = "Donald J. Trump is calling for a total and complete shutdown of Muslims entering the United States."
        case 9:
            fileName = "wall"
            text = "We need a wall."
        case 10:
            fileName = "loan"
            text = "My father gave me a small loan of a million dollars."
        case 11:
            fileName = "rapists"
            text = "They're bringing drugs, they're bringing crime, they're rapists."
        case 12:
            fileName = "tremendous"
            text = "I have tremendous relationships with people from Mexico."
        case 13:
            fileName = "univision"
            text = "Go back to Univision."
        default:
            fileName = "rapists"
            text = "They're bringing drugs, they're bringing crime, they're rapists."
        }
        
    }

}