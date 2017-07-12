//
//  ViewController.swift
//  Dicee
//
//  Created by Richard Huynh on 5/22/17.
//  Copyright © 2017 Richard Huynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1   : Int = 0
    var randomDiceIndex2   : Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    // Interface Builder Outlet
    // Image View can change only appearance
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateDiceImage()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Interface Builder Action
    // Can change appearance and the function when tapped
    @IBAction func rolleButtonPressed(_ sender: UIButton) {
        
        updateDiceImage()
        
    }
    
    func updateDiceImage(){
        // UInt31 = Unsigned Integer (32-bit)
        randomDiceIndex1   = Int(arc4random_uniform(6))
        randomDiceIndex2   = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        updateDiceImage()
    
    }

}

