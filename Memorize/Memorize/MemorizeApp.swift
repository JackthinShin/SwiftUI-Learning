//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Jackthin Shin on 2025/9/29.
//

import SwiftUI

@main
struct MemorizeApp: App {
    @StateObject var game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
