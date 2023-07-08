//
//  main.swift
//  millioner
//
//  Created by Minaya Yagubova on 24.12.22.
//

import Foundation
let questions = ["Azebaycanin paytaxti",
                 "Son dunya cempionu",
                 "Amerikada nece stat var",
                 "Hansi dovlet AB'de yoxdu",
                 "Azebaycanin paytaxti",
                 "Son dunya cempionu",
                 "Amerikada nece stat var",
                 "Hansi dovlet AB'de yoxdu",
                 "Azebaycanin paytaxti",
                 "Son dunya cempionu",
                 "Amerikada nece stat var",
                 "Hansi dovlet AB'de yoxdu",
                 "Azebaycanin paytaxti",
                 "Son dunya cempionu",
                 "Amerikada nece stat var"
]

let answers = ["0": ["A) 11", "B) 22", "C) 33", "D) 44"],
               "1": ["A) asd", "B) qwe", "C) zxc", "D) rty"],
               "2": ["A) 11", "B) 22", "C) 33", "D) 44"],
               "3": ["A) asd", "B) qwe", "C) zxc", "D) rty"],
               "4": ["A) 11", "B) 22", "C) 33", "D) 44"],
               "5": ["A) asd", "B) qwe", "C) zxc", "D) rty"],
               "6": ["A) 11", "B) 22", "C) 33", "D) 44"],
               "7": ["A) asd", "B) qwe", "C) zxc", "D) rty"],
               "8": ["A) 11", "B) 22", "C) 33", "D) 44"],
               "9": ["A) asd", "B) qwe", "C) zxc", "D) rty"],
               "10": ["A) 11", "B) 22", "C) 33", "D) 44"],
               "11": ["A) asd", "B) qwe", "C) zxc", "D) rty"],
               "12": ["A) 11", "B) 22", "C) 33", "D) 44"],
               "13": ["A) asd", "B) qwe", "C) zxc", "D) rty"],
               "14": ["A) 11", "B) 22", "C) 33", "D) 44"]]

let correctAnswer = ["A", "B", "C", "A", "B", "C", "A", "B", "C", "A", "B", "C", "A", "B", "C"]

print("Enter your name")
let name = readLine()

var point = 0
for (index, question) in questions.enumerated() {
    print(question)
    print(answers["\(index)"] ?? "")
    let myAnswer = readLine()?.uppercased()
    
    if index >= 10 && myAnswer == "0" {
        print("Siz \(point) ile oyunu tamamladiniz")
        break
    }
    
    if myAnswer == correctAnswer[index] {
        print("Dogru cavab")
        if index >= 0 && index < 5 {
            point += 1
        } else if index >= 5 && index < 10 {
            point += 3
        } else if index >= 10 {
            point += 5
        }
        
        print("Sizin \(point) xaliniz var")
    } else {
        print("Sehv cavab")
        if index >= 0 && index < 5 {
            point = 0
            print("Siz uduzdunuz. Xal: \(point)")
            break
        } else if index >= 5 && index < 10 {
            point = 5
            print("Siz uduzdunuz. Xal: \(point)")
            break
        } else if index >= 10 {
            point = 20
            print("Siz uduzdunuz. Xal: \(point)")
        }
        break
    }
}

print("Siz qalibsiniz. Xal: \(point)")
