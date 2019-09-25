//
//  ViewController.swift
//  Pig
//
//  Created by Levy, Ethan B on 9/23/19.
//  Copyright © 2019 Levy, Ethan B. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var rollButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var pigOut: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func rollPress(_ sender: Any) {
        var tempScore: Int = 0
        let roll = Int.random(in: 1...6)
        tempScore+=roll
        scoreLabel.text = "Your score \(tempScore)"
        if(roll==1) {
        tempScore = 0
        pigOut.isHidden = false
        rollButton.isHidden = true
        }
    }
    
}

