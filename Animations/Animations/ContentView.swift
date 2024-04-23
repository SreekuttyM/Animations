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
//        Button("Tap Me") {
//            // do nothing
//            tap()
//        }
//        .padding(50)
//        .background(.red)
//        .foregroundStyle(.white)
//        .clipShape(.circle)
//        .scaleEffect(animationAmount)
////        .blur(radius: (animationAmount - 1) * 3)
////        .animation(.linear, value: animationAmount)
////        .animation(.spring(duration: 3, bounce: 0.9), value: animationAmount)
//        .animation(.easeInOut(duration: 1).repeatCount(5, autoreverses: false), value: animationAmount)
//

        Button("Tap Me") {
            // animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .overlay(
            Circle()
                .stroke(.red)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(
                    .easeInOut(duration: 1)
                        .repeatForever(autoreverses: false),
                    value: animationAmount
                )
        )
        .onAppear {
            animationAmount = 3
        }
    }
    
    func tap() {
        animationAmount += 1
    }
}

#Preview {
    ContentView()
}
