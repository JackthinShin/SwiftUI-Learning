//
//  ContentView.swift
//  Memorize
//
//  Created by Jackthin Shin on 2025/9/29.
//  This project is a memorize game
//  Online Lesson of Stanford University
//  CS193p
//  Professor Paul Hegarty
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(content: {
            CardView(content: "👻" , isFaceUp: true)
            CardView(content: "👻" , isFaceUp: true)
            CardView(content: "👻" , isFaceUp: true)
            CardView(content: "👻" , isFaceUp: true)
        })
        .foregroundStyle(.orange)
        .padding()
    }
}

#Preview {
    ContentView()
}

struct  CardView: View {
    let content: String
    @State var isFaceUp = false
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                base.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}
