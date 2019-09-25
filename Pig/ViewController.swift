//
//  ViewController.swift
//  Pig
//
//  Created by Levy, Ethan B on 9/23/19.
//  Copyright © 2019 Levy, Ethan B. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    struct players {
        var score: Int
        var name: String
    }
    var howManyPlayers = 0
    @IBOutlet var buttonOne: UIButton!
    @IBOutlet var buttonTwo: UIButton!
    @IBOutlet var buttonThree: UIButton!
    @IBOutlet var buttonFour: UIButton!
    @IBOutlet var startQuestion: UILabel!
    @IBOutlet var Player1: UILabel!
    @IBOutlet var Player2: UILabel!
    @IBOutlet var Player3: UILabel!
    @IBOutlet var Player4: UILabel!
    var tempScore : Int = 0
    var Score1 : Int = 0
    var Score2 : Int = 0
    var Score3 : Int = 0
    var Score4 : Int = 00
    
    @IBAction func onePlayer(_ sender: Any) {
        howManyPlayers = 1
        buttonOne.isHidden = true
        buttonTwo.isHidden = true
        buttonThree.isHidden = true
        buttonFour.isHidden = true
        startQuestion.isHidden = true
        Player1.text = "Player 1: \(Score1)"
    }
    @IBAction func twoPlayers(_ sender: Any) {
        howManyPlayers = 2
        buttonOne.isHidden = true
        buttonTwo.isHidden = true
        buttonThree.isHidden = true
        buttonFour.isHidden = true
        startQuestion.isHidden = true
        Player1.text = "Player 1: \(Score1)"
        Player2.text = "Player 2: \(Score2)"
    }
    @IBAction func threePlayers(_ sender: Any) {
        howManyPlayers = 3
        buttonOne.isHidden = true
        buttonTwo.isHidden = true
        buttonThree.isHidden = true
        buttonFour.isHidden = true
        startQuestion.isHidden = true
        Player1.text = "Player 1: \(Score1)"
        Player2.text = "Player 2: \(Score2)"
        Player3.text = "Player 3: \(Score3)"
    }
    @IBAction func fourPlayers(_ sender: Any) {
        howManyPlayers = 4
        buttonOne.isHidden = true
        buttonTwo.isHidden = true
        buttonThree.isHidden = true
        buttonFour.isHidden = true
        startQuestion.isHidden = true
        Player1.text = "Player 1: \(Score1)"
        Player2.text = "Player 2: \(Score2)"
        Player3.text = "Player 3: \(Score3)"
        Player4.text = "Player 4: \(Score4)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
