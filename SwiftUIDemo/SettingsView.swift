//
//  SettingsView.swift
//  SwiftUIDemo
//
//  Created by Александр Садыков on 06.03.2024.
//

import SwiftUI

enum Flavor: String, CaseIterable, Identifiable {
    case chocolate, vanilla, strawberry
    var id: Self { self }
}

struct SettingsView: View {

    @Binding var titleOn: Bool
    @Binding var heightRow: Double
    
    @Environment(\.colorScheme) var colorScheme
    
    @State private var selectedFlavor: Flavor = .chocolate
    @State private var isEditing = false
    
    var body: some View {
        Form {
            Section {
                Text("Установлена \(colorScheme == .dark ? "темная" : "светлая") тема" )
            }
            
            Section {
                Toggle("Заголовок", isOn: $titleOn)
                if titleOn == true {
                    Text("Navigation title enabled")
                }
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
                Text("Высота строки в списке стран")
                Slider(value: $heightRow, in: 50...100, step: 1, onEditingChanged: { editing in
                    isEditing = editing
                } )
                if isEditing {
                    InfoRow(post: model[0], heightRow: heightRow)
                }
            }
        }
    }
}

#Preview {
    SettingsView(titleOn: .constant(true), heightRow: .constant(50.0))
}
