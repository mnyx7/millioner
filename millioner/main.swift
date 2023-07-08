//
//  main.swift
//  millioner
//
//  Created by Minaya Yagubova on 24.12.22.
//

import Foundation
print("Add your name")
var name = readLine()

var questions = ["1+1",
                 "2+1",
                 "3+1",
                 "4+1",
                 "5+1",
                 "6+1",
                 "7+1",
                 "8+1",
                 "9+1",
                 "10+1",
                 "11+1",
                 "12+1",
                 "12+1",
                 "14+1",
                 "15+1",
]

var answers = ["0": ["A) 1", "B) 3", "C) 4", "D)2"],
               "1": ["A) 3", "B) 8", "C) 5", "D)1"],
               "2": ["A) 4", "B) 3", "C) 8", "D)7"],
               "3": ["A) 4", "B) 5", "C) 8", "D)7"],
               "4": ["A) 6", "B) 3", "C) 8", "D)7"],
               "5": ["A) 4", "B) 3", "C) 8", "D)7"],
               "6": ["A) 4", "B) 3", "C) 8", "D)7"],
               "7": ["A) 4", "B) 3", "C) 9", "D)7"],
               "8": ["A) 10", "B) 3", "C) 8", "D)7"],
               "9": ["A) 11", "B) 3", "C) 8", "D)7"],
               "10": ["A) 12", "B) 3", "C) 8", "D)7"],
               "11": ["A) 4", "B) 13", "C) 8", "D)7"],
               "12": ["A) 4", "B) 3", "C) 14", "D)7"],
               "13": ["A) 4", "B) 15", "C) 8", "D)7"],
               "14": ["A) 4", "B) 3", "C) 8", "D)16"],

]

var trueAnswers = [
    "D",
    "A",
    "A",
    "B", "A", "D","C","C","A","A","A","B","C","B","D"
]

var points = 0


for (index, question) in questions.enumerated() {
    print(question)
    print(answers["\(index)"] ?? "") //answer["0"]
    let userAnswer = readLine()
    if userAnswer == "0" {
        print("Game Over")
    }
    for _ in 1...5{
        if userAnswer == trueAnswers[index] {
            points += 1
            print("Your points: \(points)")
        } else {
            points = 0
            print("Game over. Your points: \(points)")
            break
            
        }
    }
    for _ in 6...10{
        if userAnswer == trueAnswers[index] {
            points += 3
            print("Your points: \(points)")
        } else {
            print("Game over. Your points: 5")
            break
            
        }
   //     var exitPoints = points
    }
    for _ in 11...15{
        if userAnswer == trueAnswers[index] {
            points += 5
            print("Your points: \(points)")
        } else {
            points = 0
            print("Game over. Your points: \(points)")
            break
            
        }
        let userAnswer = readLine()
        if userAnswer == "0" {
            print("Game Over.Your points: \(points) ") //exitPoints??
        }
    }
    
    
    
    
}
