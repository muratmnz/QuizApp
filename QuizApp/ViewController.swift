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
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQ()
    }
    @IBAction func answerBtnPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle // True or False
        let actualQuestion = quiz[questionNumber]
        let actualAnswer = quiz[questionNumber].answer
        
        //compare question answer between user answer and set background when true or false
        if(userAnswer == actualAnswer){
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        //increase question number until max.
        if(questionNumber + 1 < quiz.count){
            questionNumber += 1
            
        }else{
            resetQ()
        }
        Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateQ), userInfo: nil, repeats: false)
   
    }
    
    //update background color, question , progressbar
    @objc func updateQ(){
        questionLabel.text = quiz[questionNumber].text
        trueBtn.backgroundColor = UIColor.clear //clear initiated color from btn
        falseBtn.backgroundColor = UIColor.clear
        progressBar.progress = Float(questionNumber + 1) / Float(quiz.count)
        
    }
    
    //reset question number to begin point.
    func resetQ(){
        questionNumber = 0
    }
}
