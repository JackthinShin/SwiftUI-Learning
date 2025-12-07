//
//  MemoryGame.swift
//  Memory
//
//  Created by Jackthin Shin on 2025/10/31.
//
//  Model

import Foundation

struct MemoryGame<CardContent> {
    // cards是Card数据类型的数组
    private(set) var cards: Array<Card>
    
    // numberOfPairsOfCards 牌的对数
    // cardContentFactory 是一个函数，从int映射到CardContent类型
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent){
        cards = Array<Card>()
        for pairIndex in 0..<max(2, numberOfPairsOfCards) {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
    
    func choose(_ card: Card) {
        
    }
    
    // mutating允许在内部修改结构体或枚举的属性值
    mutating func shuffle() {
        cards.shuffle()
    }
    
    struct Card {
        var isFaceUp = true
        var isMatched = false
        let content: CardContent
    }
}
