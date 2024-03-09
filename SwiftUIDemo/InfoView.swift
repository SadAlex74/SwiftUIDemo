//
//  InfoView.swift
//  SwiftUIDemo
//
//  Created by Александр Садыков on 06.03.2024.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        NavigationView {
            List(model){ post in
                NavigationLink {
                    InfoDetails(post: post)
                } label: {
                    InfoRow(post: post)
                }
                .navigationTitle("Где я был...")
                
            }
        }
    }
}

#Preview {
    InfoView()
}
