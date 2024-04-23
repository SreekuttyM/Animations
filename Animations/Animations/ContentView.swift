//
//  ContentView.swift
//  Animations
//
//  Created by Sreekutty Maya on 23/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    @State private var enabled = false

    var body: some View {

        Button("Tap Me") {
            // do nothing
            enabled.toggle()

        }
        .background(enabled ? .blue : .red)
        .frame(width: 200, height: 200)
        .foregroundStyle(.white)
        
        Button("Tap Me") {
            // do nothing
            enabled.toggle()

        }
        .frame(width: 200, height: 200)
        .background(enabled ? .blue : .red)
        .foregroundStyle(.white)
        .animation(.default, value: enabled)
        .clipShape(.rect(cornerRadius: enabled ? 60 : 0))

        .animation(.spring(duration: 1, bounce: 0.6), value: enabled)

    }
    
    func tap() {
        animationAmount += 1
    }
}

#Preview {
    ContentView()
}
