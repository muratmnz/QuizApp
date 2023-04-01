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

    var quizBrain = QuizBrain()
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQ()
    }
    @IBAction func answerBtnPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle! // True or False
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        //compare question answer between user answer and set background when true or false
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        //increase question number until max.
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateQ), userInfo: nil, repeats: false)
   
    }
    
    //update background color, question , progressbar
    @objc func updateQ(){
        questionLabel.text = quizBrain.getQuestionText()
        trueBtn.backgroundColor = UIColor.clear //clear initiated color from btn
        falseBtn.backgroundColor = UIColor.clear
        progressBar.progress = quizBrain.getProgress()
        
    }
    
    //reset question number to begin point.
    func resetQ(){

    }
}
