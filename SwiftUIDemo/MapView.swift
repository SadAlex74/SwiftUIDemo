//
//  MapView.swift
//  SwiftUIDemo
//
//  Created by Александр Садыков on 06.03.2024.
//

import SwiftUI
import MapKit


struct MapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 10, longitude: 70), span: MKCoordinateSpan(latitudeDelta: 100, longitudeDelta: 100))

    var body: some View {
        Map(coordinateRegion: $region, showsUserLocation: true,
          annotationItems: model) { marker in
            marker.location
        }
          .edgesIgnoringSafeArea(.top)
        
    }
}

#Preview {
    MapView()
}
