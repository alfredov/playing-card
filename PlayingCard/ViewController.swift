//
//  ViewController.swift
//  PlayingCard
//
//  Created by Alfredo Villagomez on 10/7/18.
//  Copyright © 2018 Alfredo Villagomez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var deck = PlayingCardDeck()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for _ in 1...10 {
            if let card = deck.draw() {
                print("\(card)")
            }
        }
    }

}

