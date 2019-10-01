//
//  ViewController.swift
//  Pig
//
//  Created by Levy, Ethan B on 9/23/19.
//  Copyright © 2019 Levy, Ethan B. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet var buttonOne: UIButton!
    @IBOutlet var buttonTwo: UIButton!
    @IBOutlet var buttonThree: UIButton!
    @IBOutlet var buttonFour: UIButton!
    @IBOutlet var startQuestion: UILabel!
    @IBOutlet var Player1: UILabel!
    @IBOutlet var Player2: UILabel!
    @IBOutlet var Player3: UILabel!
    @IBOutlet var Player4: UILabel!
    @IBOutlet weak var winLabel: UILabel!
    var Score1 : Int = 0
    var Score2 : Int = 0
    var Score3 : Int = 0
    var Score4 : Int = 0
    var playerScore: [Int] = []
    
    @IBAction func onePlayer(_ sender: Any) {
        playerScore = [0]
        buttonOne.isHidden = true
        buttonTwo.isHidden = true
        buttonThree.isHidden = true
        buttonFour.isHidden = true
        startQuestion.isHidden = true
        Player1.text = "Player 1: \(playerScore[0])"
        scoreLabel.isHidden = false
        rollButton.isHidden = false
        Player1.isHidden = false
    }
    @IBAction func twoPlayers(_ sender: Any) {
        playerScore = [0, 0]
        buttonOne.isHidden = true
        buttonTwo.isHidden = true
        buttonThree.isHidden = true
        buttonFour.isHidden = true
        startQuestion.isHidden = true
        Player1.text = "Player 1: \(playerScore[0])"
        Player2.text = "Player 2: \(playerScore[1])"
        scoreLabel.isHidden = false
        rollButton.isHidden = false
        Player1.isHidden = false
        Player2.isHidden = false
    }
    @IBAction func threePlayers(_ sender: Any) {
        playerScore = [0, 0, 0]
        buttonOne.isHidden = true
        buttonTwo.isHidden = true
        buttonThree.isHidden = true
        buttonFour.isHidden = true
        startQuestion.isHidden = true
        Player1.text = "Player 1: \(playerScore[0])"
        Player2.text = "Player 2: \(playerScore[1])"
        Player3.text = "Player 3: \(playerScore[2])"
        scoreLabel.isHidden = false
        rollButton.isHidden = false
        Player1.isHidden = false
        Player2.isHidden = false
        Player3.isHidden = false
    }
    @IBAction func fourPlayers(_ sender: Any) {
        playerScore = [0, 0, 0, 0]
        buttonOne.isHidden = true
        buttonTwo.isHidden = true
        buttonThree.isHidden = true
        buttonFour.isHidden = true
        startQuestion.isHidden = true
        Player1.text = "Player 1: \(playerScore[0])"
        Player2.text = "Player 2: \(playerScore[1])"
        Player3.text = "Player 3: \(playerScore[2])"
        Player4.text = "Player 4: \(playerScore[3])"
        scoreLabel.isHidden = false
        rollButton.isHidden = false
        Player1.isHidden = false
        Player2.isHidden = false
        Player3.isHidden = false
        Player4.isHidden = false
    }
    
    @IBOutlet weak var rollButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var pigOut: UILabel!
    @IBOutlet var endTurn: UIButton!
    var tempScore: Int = 0
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func endTurn(_ sender: Any) {
        endTurn.isHidden = true
        pigOut.isHidden = true
        rollButton.isHidden = false
        if counter == playerScore.count {
            counter = 0
        }
        playerScore[counter] += tempScore
        tempScore = 0
        scoreLabel.text = "Your score:  \(tempScore)"
        
        if (counter == 0) {
            Player1.text = "Player 1: \(playerScore[0])"
        }
        
        else if (counter == 1) {
            Player1.text = "Player 1: \(playerScore[0])"
            Player2.text = "Player 2: \(playerScore[1])"
        }
        
        else if (counter == 2) {
            Player1.text = "Player 1: \(playerScore[0])"
            Player2.text = "Player 2: \(playerScore[1])"
            Player3.text = "Player 3: \(playerScore[2])"
        }
        
        else if (counter == 3) {
            Player1.text = "Player 1: \(playerScore[0])"
            Player2.text = "Player 2: \(playerScore[1])"
            Player3.text = "Player 3: \(playerScore[2])"
            Player4.text = "Player 4: \(playerScore[3])"
        }
        counter += 1
        let playerCountLength = playerScore.count
        for number in 0...(playerCountLength-1) {
            if (playerScore[number] >= 100) {
                winScreen()
                playAgainButton.isHidden = false
                Player1.isHidden = true
                Player2.isHidden = true
                Player3.isHidden = true
                Player4.isHidden = true
            }
        }
    }
    
    @IBAction func rollPress(_ sender: Any) {
        let roll = Int.random(in: 1...6)
        tempScore += roll
        scoreLabel.text = "Your score:  \(tempScore)"
        endTurn.isHidden = false
        if(roll==1) {
        tempScore = 0
        pigOut.isHidden = false
        rollButton.isHidden = true
        endTurn.isHidden = false
        }
    }
        
        func winScreen () {
            winLabel.isHidden = false
            pigOut.isHidden = true
            rollButton.isHidden = true
            endTurn.isHidden = true
            scoreLabel.isHidden = true
            Player1.isHidden = true
            Player2.isHidden = true
            Player3.isHidden = true
            Player4.isHidden = true
        }
    
    @IBAction func playAgain(_ sender: Any) {
        buttonOne.isHidden = false
        buttonTwo.isHidden = false
        buttonThree.isHidden = false
        buttonFour.isHidden = false
        startQuestion.isHidden = false
        winLabel.isHidden = true
        playAgainButton.isHidden = true
    }
}
