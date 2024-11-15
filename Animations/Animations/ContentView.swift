//
//  ContentView.swift
//  Animations
//
//  Created by Soumyadeep Chatterjee on 11/14/24.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmt = 1.0
    var body: some View {
        VStack {
            Button("Tap me"){
                animationAmt += 1
            }
            .padding(50)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(.circle)
            .animation(.spring(duration:1, bounce: 0.9), value: animationAmt)
            .blur(radius: (animationAmt - 1) * 3)
        }
        .scaleEffect(animationAmt)
    }
}

#Preview {
    ContentView()
}
