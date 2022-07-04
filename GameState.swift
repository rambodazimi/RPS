//
//  GameState.swift
//  RPS
//
//  Created by Rambod Azimi on 6/14/21.
//

import Foundation
import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)


//Defining an enum that represents states of the game
enum GameState{
    case start, win, lose, draw
}



var playerSign = Sign.paper
var gameState = GameState.start


//Generates a random sign
func randomSign() -> Sign{
    let randomNumber = randomChoice.nextInt()
    if (randomNumber == 0){
        return .rock
    }else if (randomNumber == 1){
        return .paper
    }else{
        return .scissors
    }
}

var number = 0
//Random Sign => Computer's Sign
//sign => Member's Sign
func stateCalculator (sign: Sign) -> GameState{
    let randomSign = randomSign()
    if(randomSign == .rock && sign == .rock){
        number = 0
        return .draw
    } else if(randomSign == .rock && sign == .paper){
        number = 0
        return .win
    } else if(randomSign == .rock && sign == .scissors){
        number = 0
        return .lose
    } else if(randomSign == .paper && sign == .rock){
        number = 1
        return .lose
    } else if(randomSign == .paper && sign == .paper){
        number = 1
        return .draw
    } else if(randomSign == .paper && sign == .scissors){
        number = 1
        return .win
    } else if(randomSign == .scissors && sign == .rock){
        number = 2
        return .win
    } else if(randomSign == .scissors && sign == .paper){
        number = 2
        return .lose
    } else if(randomSign == .scissors && sign == .scissors){
        number = 2
        return .draw
    } else{
        return .start
    }
    
}
