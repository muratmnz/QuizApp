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
        "Six + five is equal to eleven.",
        "The earth is the fourth planet from the sun.",
        "Jupiter is composed mostly of iron.",
        "A lunar eclipse occurs when the sun passes"
    ]
    
    var questionLcation = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQ()
        
    }
    @IBAction func answerBtnPressed(_ sender: UIButton) {
        questionLcation += 1
        updateQ()
    }
    func updateQ(){
        questionLabel.text = quiz[questionLcation]
    }
}
