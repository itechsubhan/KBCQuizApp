//
//  ToastView.swift
//  KBC
//
//  Created by Mohd Abdul Subhan on 12/14/24.
//

import SwiftUI

import SwiftUI

struct ToastView: View {
    let message: String

    var body: some View {
        Text(message)
            .font(.title3)
            .padding()
            .background(Color.green)
            .cornerRadius(10)
            .shadow(radius: 5)
            .foregroundColor(.white)
    }
}
#Preview {
    ToastView(message: "Hello, World!")
}
