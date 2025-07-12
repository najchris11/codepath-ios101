//
//  TriviaQuestion.swift
//  Trivia
//
//  Created by Mari Batilando on 4/6/23.
//

import Foundation

struct TriviaQuestion: Decodable {
    let question: String
    let correctAnswer: String
    let incorrectAnswers: [String]
    let type: String
    let category: String
    let difficulty: String
    
    enum CodingKeys: String, CodingKey {
        case question
        case correctAnswer = "correct_answer"
        case incorrectAnswers = "incorrect_answers"
        case type
        case category
        case difficulty
    }
}
