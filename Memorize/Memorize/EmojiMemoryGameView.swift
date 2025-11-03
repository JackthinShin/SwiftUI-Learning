//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by Jackthin Shin on 2025/9/29.
//  This project is a memorize game
//  Online Lesson of Stanford University
//  CS193p
//  Professor Paul Hegarty
//
//  View

import SwiftUI

struct EmojiMemoryGameView: View {
    var viewModel = EmojiMemoryGame()
        
    var body: some View {
        ScrollView {
            cards
        }
        .padding()
    }
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
            ForEach(viewModel.cards.indices, id: \.self) { index in
                CardView(viewModel.cards[index])
                    .aspectRatio(2/3, contentMode: .fit)
            }
        }
        .foregroundStyle(.orange)
    }
}

#Preview {
    EmojiMemoryGameView()
}

struct CardView: View {
    let card: MemoryGame<String>.Card
    
    init(_ card: MemoryGame<String>.Card) {
        self.card = card
    }
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            Group {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(card.content).font(.largeTitle)
            }
                .opacity(card.isFaceUp ? 1 : 0)
            base.fill()
                .opacity(card.isFaceUp ? 0 : 1)
        }
    }
}
