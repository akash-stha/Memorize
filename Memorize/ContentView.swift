//
//  ContentView.swift
//  Memorize
//
//  Created by Akash Shrestha on 2024-07-29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView()
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(.green)
        .padding()
    }
}

#Preview {
    ContentView()
}

struct CardView: View {
    
    @State var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            let base: RoundedRectangle = RoundedRectangle(cornerRadius: 6)
            if isFaceUp {
                base.strokeBorder(lineWidth: 2)
                Text("👩🏻‍🎓")
            } else {
                base
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
    
}
