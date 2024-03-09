//
//  InfoView.swift
//  SwiftUIDemo
//
//  Created by Александр Садыков on 06.03.2024.
//

import SwiftUI

struct InfoView: View {
    var titleOn: Bool
    var heightRow: Double
    var body: some View {
        NavigationView {
            List(model){ post in
                NavigationLink {
                    InfoDetails(post: post)
                } label: {
                    InfoRow(post: post, heightRow: heightRow)
                }
                .navigationTitle("\(titleOn == true ? "Где я был..." : "")")
            }
            .listStyle(.plain)
        }
    }
}

#Preview {
    InfoView(titleOn: true, heightRow: 50.0)
}
