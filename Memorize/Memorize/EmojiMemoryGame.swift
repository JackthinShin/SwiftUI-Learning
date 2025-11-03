//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Jackthin Shin on 2025/10/31.
//
//  ViewModel

import SwiftUI

class EmojiMemoryGame {
    private static let emojis = ["👻", "🙈", "🎶", "😘", "🐶", "🍎", "🚗", "🏀", "🌟", "🍔", "🎲", "📚"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        return MemoryGame(numberOfPairsOfCards: 16) { pairIndex in
            if emojis.indices.contains(pairIndex) {
                return emojis[pairIndex]
            } else {
                return "⁇"
            }
        }
    }
    
    private var model = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
