//
//  ContentView.swift
//  Animations
//
//  Created by Sreekutty Maya on 23/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0

    var body: some View {
        Button("Tap Me") {
            // do nothing
            tap()
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount)
        .blur(radius: (animationAmount - 1) * 3)
        .animation(.default, value: animationAmount)

    }
    
    func tap() {
        animationAmount += 1
    }
}

#Preview {
    ContentView()
}
