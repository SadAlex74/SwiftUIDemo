//
//  Post.swift
//  SwiftUIDemo
//
//  Created by Александр Садыков on 04.03.2024.
//

import SwiftUI
import MapKit

struct Post: Identifiable {
    let id = UUID()
    var title: String
    var description: String
    var image: Image
    var location: MapMarker
}
