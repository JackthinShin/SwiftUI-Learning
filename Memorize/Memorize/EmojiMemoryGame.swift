//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Jackthin Shin on 2025/10/31.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String>
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
