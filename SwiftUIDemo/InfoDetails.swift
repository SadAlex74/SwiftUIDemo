//
//  InfoDetails.swift
//  SwiftUIDemo
//
//  Created by Александр Садыков on 06.03.2024.
//

import SwiftUI

struct InfoDetails: View {
    var post: Post
    var body: some View {
        HStack{
            post.image
                .resizable()
                .scaledToFit()
                .frame(width: 150)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            Text(post.title)
                .fontWeight(.heavy)
                .padding(.leading)
           Spacer()
            }
        .padding()
        ScrollView {
            Text(post.description)
                .padding(16)
        }
    
    }
}

#Preview {
    InfoDetails(post: model[0])
}
