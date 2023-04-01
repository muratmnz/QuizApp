//
//  QuizBrain.swift
//  QuizApp
//
//  Created by Murat Minaz on 1.04.2023.
//  Copyright © 2023 muratmnz. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "Google was originally called 'Backrub'.", a: "True"),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
    ]
    
    var questionNumber = 0
    
    func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            //user's answer is right
            return true
        } else {
            //user's answer is wrong
            return false
        }
    }
    func getProgress() -> Float {
       let progress = Float(questionNumber + 1) / Float(quiz.count)
        return progress
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
   mutating func nextQuestion(){
        if(questionNumber + 1 < quiz.count){
            questionNumber += 1
            
        }else{
            questionNumber = 0
        }
    }
}
