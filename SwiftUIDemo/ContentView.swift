//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Александр Садыков on 04.03.2024.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("Title_On") private var titleOn = true
    @AppStorage("heightRow") private var heightRow = 50.0
    
    var body: some View {
        TabView() {
            InfoView(titleOn: titleOn, heightRow: heightRow)
                .tabItem {
                    Label("Страны", systemImage: "globe.asia.australia")
                }
            
            MapView()
                .tabItem {
                    Label("Карта", systemImage: "map")
                }
            SettingsView(titleOn: $titleOn, heightRow: $heightRow)
                .tabItem {
                    Label("Нвстройки", systemImage: "gear")
                }
        }
    }
}

#Preview {
    ContentView()
}
