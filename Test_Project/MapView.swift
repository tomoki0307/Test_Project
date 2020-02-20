//
//  MapView.swift
//  Test_Project
//
//  Created by 筒井知生 on 2020/01/16.
//  Copyright © 2020 筒井知生. All rights reserved.
//

import SwiftUI
import MapKit

struct Landmark {
    let id: String
    let name: String
    let location: CLLocationCoordinate2D
}

struct MapView: UIViewRepresentable {
    
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 35.3955, longitude: 139.4245)
        let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
//        view.addAnnotation()
    }
}



struct MapView_Preview: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
