//
//  InfoRow.swift
//  SwiftUIDemo
//
//  Created by Александр Садыков on 06.03.2024.
//

import SwiftUI

struct InfoRow: View {
    var post: Post
    var heightRow: Double
    var body: some View {
        HStack{
            post.image
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                //.border(.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            Text(post.title)
                .bold()
            Spacer()
        }
        .frame(height: heightRow)
    }
}

#Preview {
    InfoRow(post: model[0], heightRow: 50.0)
}
