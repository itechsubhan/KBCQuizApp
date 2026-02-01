//
//  GameOverView.swift
//  KBC
//
//  Created by Mohd Abdul Subhan on 12/14/24.
//

import SwiftUI

struct GameOverView: View {
    let yourEarnings: Int

    var body: some View {
        VStack {
            Text("Game Over")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()

            Text("Your score: \(yourEarnings)")
                .font(.title)
                .padding()

            Button(action: {
                // Go back to the start
            }) {
                Text("Exit")
                    .font(.title2)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    GameOverView(yourEarnings:30)
}
