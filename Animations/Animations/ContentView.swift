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
        print(animationAmount)

       return VStack {
           Stepper("Scale amount", value: $animationAmount.animation(.easeInOut(duration: 1).repeatCount(2)), in: 1...10)
            
            Spacer()
            
            Button("Tap Me") {
                animationAmount += 1
            }
            .padding(40)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(.circle)
            .scaleEffect(animationAmount)
        }
    }
    
    func tap() {
        animationAmount += 1
    }
}

#Preview {
    ContentView()
}
