//
//  main.swift
//  Guessing Game
//
//  Created by Emily Baker-King on 8/16/18.
//  Copyright © 2018 Emily Baker-King. All rights reserved.
//

import Foundation


var keepPlaying = false

repeat {
let randomNumber = (Int(arc4random_uniform(99)) + 1)

var guessedNumber: Int? = nil

var numberOfTries = 5



print("Guess a random number between 1 and 100:")


    repeat {
        repeat {
            let input = readLine()!
            if input == "Imagination" {
                print("🌈")
            }
            if input == "fuck you" {
                print("The answer is \(randomNumber)")
            }
            if input == "me money" {
                print("🦀")
            }
            if input == "is this the krusty krab?" {
                print("NO, THIS IS PATRICK!")
            }
            if input == "redrum" {
                print("🙎🏻‍♀️🙎🏻‍♀️")
            }
            if let number = Int(input) {
                guessedNumber = number
                if number < 1 || number > 100 {
                    print("Please select a number between 1 and 100.")
                    guessedNumber = nil
                }; while guessedNumber == nil {
                    break
                }
            } else{
                print("Please enter a number")
                guessedNumber = nil
            }
        } while guessedNumber == nil
        
        guard let guessedNumber = guessedNumber else {
            fatalError()
        }
        if guessedNumber == randomNumber {
            print("You won!! 😱🤯🎉🤓")
            break
        }
        if guessedNumber == 24 {
            print("Hey Patrick, you know what's funnier than 24?")
        }

        if guessedNumber == 25 {
            print("25!!! 😂😉")
        }
        if numberOfTries == 1 {
            print("Oops you lost, the right number is \(randomNumber)! Better luck next time! 😢😫")
            break
        }
        else if guessedNumber > randomNumber {
            print("Too high 🙈")
            numberOfTries -= 1
        } else if guessedNumber < randomNumber {
            print("Too low 😔")
            numberOfTries -= 1
        }
        print("You have \(numberOfTries) tries left")
        
        
    } while numberOfTries > 0
    print("Play again? Y or N")
    let input = readLine()!
    
    if input.lowercased() == "y" {
        keepPlaying = true
    } else {
        keepPlaying = false
    }

} while keepPlaying
