//
//  ViewController.swift
//  RPS
//
//  Created by Rambod Azimi on 6/14/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initializeScores()
        // Do any additional setup after loading the view.
    }
    
    
    let winSound = SimpleSound(named: "right")
    let loseSound = SimpleSound(named: "wrong")
    let resetSound = SimpleSound(named: "reset")
    
    @IBOutlet weak var robotState: UILabel!
    @IBOutlet weak var whoWins: UILabel!
    @IBOutlet weak var rock: UIButton!
    @IBOutlet weak var paper: UIButton!
    @IBOutlet weak var scissors: UIButton!
    
    @IBOutlet weak var you: UILabel!
    @IBOutlet weak var opponent: UILabel!
    @IBOutlet weak var yourScore: UILabel!
    @IBOutlet weak var opponentScore: UILabel!
    
    
    var stateOfGame: GameState = .start
    
    
    
    
    @IBAction func rockPressed(_ sender: UIButton) {
        stateOfGame = stateCalculator(sign: .rock)
        if(number == 0){
            robotState.text = "👊"
        } else if(number == 1){
            robotState.text = "✋"
        } else{
            robotState.text = "✌️"
        }
        
        paper.isHidden = true
        scissors.isHidden = true
        
        
        if(stateOfGame == .win){
            self.view.backgroundColor = .green
            whoWins.text = "You Won!"
            winSound.play()
            intValue += 1
            yourScore.text = String(intValue)
        }else if(stateOfGame == .draw){
            self.view.backgroundColor = .white
            whoWins.text = "Draw!"
        }else{
            self.view.backgroundColor = .red
            whoWins.text = "You Lost!"
            loseSound.play()
            intValue2 += 1
            opponentScore.text = String(intValue2)
        }
        
        
    }
    
    @IBAction func paperPressed(_ sender: UIButton) {
        stateOfGame = stateCalculator(sign: .paper)
        if(number == 0){
            robotState.text = "👊"
        } else if(number == 1){
            robotState.text = "✋"
        } else{
            robotState.text = "✌️"
        }
        
        rock.isHidden = true
        scissors.isHidden = true
        
        if(stateOfGame == .win){
            self.view.backgroundColor = .green
            whoWins.text = "You Won!"
            winSound.play()
            intValue += 1
            yourScore.text = String(intValue)
        }else if(stateOfGame == .draw){
            self.view.backgroundColor = .white
            whoWins.text = "Draw!"
        }else{
            self.view.backgroundColor = .red
            whoWins.text = "You Lost!"
            loseSound.play()
            intValue2 += 1
            opponentScore.text = String(intValue2)
        }
        
        
    }
    
    @IBAction func scissorsPressed(_ sender: UIButton) {
        stateOfGame = stateCalculator(sign: .scissors)
        if(number == 0){
            robotState.text = "👊"
        } else if(number == 1){
            robotState.text = "✋"
        } else{
            robotState.text = "✌️"
        }
        
        paper.isHidden = true
        rock.isHidden = true
        
        
        if(stateOfGame == .win){
            self.view.backgroundColor = .green
            whoWins.text = "You Won!"
            winSound.play()
            intValue += 1
            yourScore.text = String(intValue)
        }else if(stateOfGame == .draw){
            self.view.backgroundColor = .white
            whoWins.text = "Draw!"
        }else{
            self.view.backgroundColor = .red
            whoWins.text = "You Lost!"
            loseSound.play()
            intValue2 += 1
            opponentScore.text = String(intValue2)
        }
        
    }

    
    @IBAction func playAgain(_ sender: UIButton) {
        whoWins.text = "Rock, Paper, Scissors?"
        self.view.backgroundColor = .gray
        robotState.text = "🤖"
        rock.isHidden = false
        paper.isHidden = false
        scissors.isHidden = false
    }
    
    
    var intValue = 0
    var intValue2 = 0
    
    func initializeScores(){
        var yourScore = yourScore.text
        yourScore = "0"
        intValue = Int(yourScore!)!
        
        var opponentScore = opponentScore.text
        opponentScore = "0"
        intValue2 = Int(opponentScore!)!
    }
    
    @IBAction func reset(_ sender: UIButton) {
        intValue = 0
        intValue2 = 0
        yourScore.text = "0"
        opponentScore.text = "0"
        whoWins.text = "Rock, Paper, Scissors?"
        self.view.backgroundColor = .gray
        robotState.text = "🤖"
        rock.isHidden = false
        paper.isHidden = false
        scissors.isHidden = false
        resetSound.play()
    }
    
}

