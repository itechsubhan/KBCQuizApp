//
//  SplashScreen.swift
//  Dockify
//
//  Created by Mohd Abdul Subhan on 12/14/24.
//

import SwiftUI

struct SplashScreen: View {

    @State var isActive: Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5

    // Customise your SplashScreen here
    var body: some View {
        if isActive {
            VStack {
                GameView()
            }
        } else {
            VStack {
                VStack {
                    Spacer()
                    Image("logo").resizable().frame(width: 250, height: 250)
                    Spacer()
                    Text("© Mohd Abdul Subhan  2024 \n")
                        .foregroundColor(.black.opacity(0.80))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.00
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

#Preview {
    SplashScreen()
}
