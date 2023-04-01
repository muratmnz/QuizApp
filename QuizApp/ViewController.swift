//
//  ViewController.swift
//  QuizApp
//
//  Created by Murat Minaz on 31.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueBtn: UIButton!
    @IBOutlet weak var falseBtn: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let quiz = [
        Question(q: "Google was originally called 'Backrub'.", a: "True"),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
    ]
    
    var questionLcation = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQ()
        
    }
    @IBAction func answerBtnPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle // True or False
        let actualQuestion = quiz[questionLcation]
        let actualAnswer = quiz[questionLcation].answer
        
        if(questionLcation + 1 < quiz.count){
            questionLcation += 1
            
        }else{
            resetQ()
        }
        updateQ()
    }
    func updateQ(){
        questionLabel.text = quiz[questionLcation].text
    }
    func resetQ(){
        questionLcation = 0
    }
}
