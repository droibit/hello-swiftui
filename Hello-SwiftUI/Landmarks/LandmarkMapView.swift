//
//  LandmarksMapView.swift
//  Hello-SwiftUI
//
//  Created by Shinya Kumagai on 2020/09/27.
//

import SwiftUI
import MapKit

struct LandmarkMapView: UIViewRepresentable {
    var coordinate: CLLocationCoordinate2D
        
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        uiView.setRegion(region, animated: true)
    }
}

struct LandmarksMapView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkMapView(coordinate: landmarkData[0].locationCoordinate)
    }
}
