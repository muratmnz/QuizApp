//
//  Question.swift
//  QuizApp
//
//  Created by Murat Minaz on 1.04.2023.
//  Copyright © 2023 muratmnz. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
