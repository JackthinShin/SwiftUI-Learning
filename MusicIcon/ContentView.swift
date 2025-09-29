//
//  ContentView.swift
//  MusicIcon
//
//  Created by Jackthin Shin on 2025/9/29.
//
//  The First Application of Mine
//  The First Homework of AiTe Club iOS Group
//  Demonstrating a Red Music Icon
//  Accompanied With Text 'Music'

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "music.quarternote.3")
                .font(.system(size: 50))
                .foregroundStyle(.red)
            .padding()
            Text("Music")
                .bold()
                .font(.system(size: 50))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
