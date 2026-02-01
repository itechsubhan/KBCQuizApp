//
//  GameView.swift
//  KBC
//
//  Created by Mohd Abdul Subhan on 12/14/24.
//

import SwiftUI

struct GameView: View {
    @State private var currentQuestionIndex = 0
    @State private var yourEarnings = 0
    @State private var isCorrectAnswer = false
    @State private var showToast = false
    @State private var isGameOver = false
    @State private var isGameWon = false

    let questions: [Question] = Question.sampleQuestions()

    var body: some View {
        ZStack {
            Color("Background").edgesIgnoringSafeArea(.all)
            VStack {
                if isGameOver {
                    GameOverView(yourEarnings: yourEarnings)
                } else if isGameWon {
                    WinView(yourEarnings: yourEarnings)
                } else {
                    Image("LogoWOB").resizable().frame(width: 100, height: 100)
                    Text("Question \(currentQuestionIndex + 1) of 10")
                        .font(.title).foregroundColor(.white)
                        .padding()

                    Text(questions[currentQuestionIndex].question)
                        .font(.title2).foregroundColor(.white)
                        .padding()

                    VStack {
                        ForEach(
                            0..<questions[currentQuestionIndex].options.count
                                / 2 + questions[currentQuestionIndex].options
                                .count % 2, id: \.self
                        ) { rowIndex in
                            HStack {
                                ForEach(0..<2) { index in
                                    let buttonIndex = rowIndex * 2 + index
                                    if buttonIndex
                                        < questions[currentQuestionIndex]
                                        .options.count
                                    {
                                        // check answer button
                                        Button(action: {
                                            checkAnswer(
                                                selectedOption: questions[
                                                    currentQuestionIndex
                                                ].options[buttonIndex])
                                        }) {
                                            Text(
                                                questions[currentQuestionIndex]
                                                    .options[buttonIndex]
                                            )
                                            .font(.title3)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .frame(maxWidth: .infinity)
                                            .padding()
                                            .background(Color(Color.indigo))
                                            .cornerRadius(50).overlay(
                                                RoundedRectangle(
                                                    cornerRadius: 50
                                                )
                                                .stroke(
                                                    Color.white, lineWidth: 2)  // Adds a white border with a width of 2
                                            )
                                            .shadow(
                                                color: Color.black.opacity(
                                                    0.08),
                                                radius: 60, x: 0.0, y: 16)
                                        }
                                    }
                                }
                            }
                        }
                    }
                    Text("You Won :$\(yourEarnings)").font(.title)
                        .fontWeight(.bold).foregroundColor(.white).padding()
                    Spacer()
                }

                if showToast {
                    ToastView(message: "Correct Answer!")
                        .transition(.move(edge: .bottom))
                }
            }
            .padding()
        }
    }

    func checkAnswer(selectedOption: String) {
        let correctAnswer = questions[currentQuestionIndex].correctAnswer
        if selectedOption == correctAnswer {
            yourEarnings += 100
            showToast = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                showToast = false
            }
        } else {
            isGameOver = true
        }

        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
        } else {
            isGameWon = true
        }
    }
}

#Preview {
    GameView()
}
