//
//  SettingsView.swift
//  SwiftUIDemo
//
//  Created by Александр Садыков on 06.03.2024.
//

import SwiftUI

struct SettingsView: View {
    enum Flavor: String, CaseIterable, Identifiable {
        case chocolate, vanilla, strawberry
        var id: Self { self }
    }


    @State private var selectedFlavor: Flavor = .chocolate
    @State private var toggleIsOn = false
    @State private var sliderVelue = 0.0
    @State private var isEditing = false
    
    var body: some View {
        Form {
            Section {
                Text("Демонстрация вывода текста")
            }
            
            Section {
                Toggle("Переключатель", isOn: $toggleIsOn)
            }
            Section {
                Picker("Вкус", selection: $selectedFlavor) {
                    Text("Шоколад").tag(Flavor.chocolate)
                    Text("Ваниль").tag(Flavor.vanilla)
                    Text("Клубника").tag(Flavor.strawberry)
                }
                .pickerStyle(.menu)
            }
            Section {
                Slider(value: $sliderVelue, in: 0...100, step: 1, onEditingChanged: { editing in
                    isEditing = editing
                } )
                Text("\(Int(sliderVelue))")
                    .foregroundColor(isEditing ? .red : .blue)
            }
        }
    }
}

#Preview {
    SettingsView()
}
