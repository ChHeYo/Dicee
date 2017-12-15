//
//  ViewController.swift
//  Dicee
//
//  Created by Jason Yoo on 11/30/17.
//  Copyright © 2017 ThumbsUp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var diceIndex1 : Int = 0
    var diceIndex2 : Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        updateDiceImages()
    }

    
    @IBAction func exampleButton(_ sender: UIButton) {
        if (sender.tag == 1) {
            print("example1")
        } else if (sender.tag == 2) {
            print("example2")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        
        diceIndex1 = Int(arc4random_uniform(6))
        diceIndex2 = Int(arc4random_uniform(6))
        diceImageView1.image = UIImage(named: diceArray[diceIndex1])
        diceImageView2.image = UIImage(named: diceArray[diceIndex2])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
}

