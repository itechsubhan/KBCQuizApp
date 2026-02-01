//
//  Question.swift
//  KBC
//
//  Created by Mohd Abdul Subhan on 12/14/24.
//

import Foundation
struct Question {
    let question: String
    let options: [String]
    let correctAnswer: String

    static func sampleQuestions() -> [Question] {
        return [
            Question(question: "ما هو الدور الأساسي للجذر في علم الصرف ", options: ["الإجابة: الأساس", "London", "Berlin", "Rome"], correctAnswer: "Paris"),
            Question(question: "What is the currency of Japan?", options: ["Yen", "Dollar", "Euro", "Won"], correctAnswer: "Yen"),
            Question(question: "Which planet is known as the Red Planet?", options: ["Mars", "Earth", "Jupiter", "Saturn"], correctAnswer: "Mars"),
            Question(question: "Who wrote 'Romeo and Juliet'?", options: ["Shakespeare", "Dickens", "Austen", "Hemingway"], correctAnswer: "Shakespeare"),
            Question(question: "What is the largest ocean on Earth?", options: ["Pacific Ocean", "Atlantic Ocean", "Indian Ocean", "Arctic Ocean"], correctAnswer: "Pacific Ocean"),
            Question(question: "In which year did the Titanic sink?", options: ["1912", "1905", "1898", "1923"], correctAnswer: "1912"),
            Question(question: "Who painted the Mona Lisa?", options: ["Leonardo da Vinci", "Vincent van Gogh", "Pablo Picasso", "Claude Monet"], correctAnswer: "Leonardo da Vinci"),
            Question(question: "What is the chemical symbol for gold?", options: ["Au", "Ag", "Pb", "Fe"], correctAnswer: "Au"),
            Question(question: "Which country is known as the Land of the Rising Sun?", options: ["Japan", "China", "India", "Thailand"], correctAnswer: "Japan"),
            Question(question: "What is the tallest mountain in the world?", options: ["Mount Everest", "K2", "Kangchenjunga", "Mount Kilimanjaro"], correctAnswer: "Mount Everest")

        ]
    }
}
