//
//  WinView.swift
//  KBC
//
//  Created by Mohd Abdul Subhan on 12/14/24.
//

import SwiftUI

struct WinView: View {
    let yourEarnings: Int

    var body: some View {
        VStack {
            Text("You Won!")
                .font(.largeTitle)
                .fontWeight(.bold).foregroundStyle(Color.white)
                .padding()

            Text("Congratulations, you Won $\(yourEarnings)")
                .font(.title).foregroundStyle(Color.white)
                .padding()

            Button(action: {
                //exit the app();
            }) {
                Text("Done")
                    .font(.title2)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    WinView(yourEarnings: 100)
}
