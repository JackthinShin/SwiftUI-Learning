//
//  ContentView.swift
//  Lesson2
//
//  Created by Jackthin Shin on 2025/10/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("垂直布局 VStack")
            HStack {
                Text("左")
                Spacer()
                Text("右")
            }
            ZStack {
                Color.yellow
                Text("叠放在背景上的文字")
            }
        }
        .padding()
        VStack {
            Text("Hello, iOS Club!")
                .font(.title)
                .foregroundColor(.blue)
                .bold()
                .padding()
            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 60, height: 60)
                .foregroundColor(.yellow)
        }
    }
}

struct ControlsExample: View {
    @State private var count = 0
    @State private var name = ""
    @State private var isDark = false
    var body: some View {
        VStack(spacing: 20) {
            TextField("请输入你的名字", text: $name)
                .textFieldStyle(.roundedBorder)
                .padding()
            Button("打招呼") {
                count += 1
            }
            .buttonStyle(.glass)
            Text("你好，\(name)，你点击了 \(count) 次")
            Toggle("夜间模式", isOn: $isDark)
                .padding()
        }
        .padding()
//        .background(isDark ? Color.black:Color.white)
//        .foregroundColor(isDark ? .white : .black)
    }
}

struct ModifierExample: View {
    @Environment(\.colorScheme) var currentDarkMode
    var body: some View {
        Text("这是被修饰的文字")
            .font(.largeTitle)
            .foregroundColor(currentDarkMode == .dark ? .white : .black)
            .padding()
            .background(.gray)
            .cornerRadius(12)
            .shadow(radius: 5)
    }
}

struct NavigationExample: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("前往详情页", destination: ContentView())
                NavigationLink("关于 iOS Club", destination: Text("我们是热爱苹果开发的社团！"))
            }
            .navigationTitle("导航示例")
        }
    }
}

struct ExampleMain: View {
    @State private var name = ""
    @State private var isDark = false
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("欢迎来到 iOS Club")
                    .font(.title)
                    .foregroundColor(isDark ? .white : .blue)
                TextField("请输入你的名字", text: $name)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                Button("打招呼") { }
                    .buttonStyle(.borderedProminent)
                if !name.isEmpty {
                Text("你好，\(name)！🎉")
                    .font(.headline)
                }
                Toggle("夜间模式", isOn: $isDark)
                    .padding()
                Spacer()
            }
            .padding()
            .background(isDark ? .black : .white)
            .navigationTitle("SwiftUI 入门")
        }
    }
}

#Preview {
//    ContentView()
    ControlsExample()
    ModifierExample()
    NavigationExample()
//    ExampleMain()
}
