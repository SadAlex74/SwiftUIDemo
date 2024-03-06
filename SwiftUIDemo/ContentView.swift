//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Александр Садыков on 04.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView() {
            InfoView()
                .tabItem {
                    Label("Страны", systemImage: "globe.asia.australia")
                }
            
            HelloView()
                .tabItem { 
                    Label("Hello!", systemImage: "hand.wave")
                }
            SettingsView()
                .tabItem {
                    Label("Нвстройки", systemImage: "gear")
                }
        }
    }
}

#Preview {
    ContentView()
}
