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
    class MapViewCoordinator: NSObject, MKMapViewDelegate {
        var mapViewController: MapView
        
        @Binding var show_profile_nav: Bool
        init(_ control: MapView,show_profile_nav: Binding<Bool>) {
            self.mapViewController = control
            _show_profile_nav = show_profile_nav
        }
       

        func mapView(_ mapView: MKMapView, viewFor
            annotation: MKAnnotation) -> MKAnnotationView?{
            //Custom View for Annotation
            let annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "Sumbnail")
            annotationView.canShowCallout = true
            //Your custom image icon
            annotationView.image = UIImage(named: "Sumbnail")
            annotationView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
    //        annotationView.clipsToBounds = true
            annotationView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(MapViewCoordinator.imageViewTapped(_:))))
            return annotationView
        }
        @objc func imageViewTapped(_ sender: UITapGestureRecognizer) {
            show_profile_nav = true
        }
        
    }
    @Binding var show_profile_nav:Bool
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    func makeCoordinator() -> MapViewCoordinator{
        MapViewCoordinator(self,show_profile_nav: self.$show_profile_nav)
    }
    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 35.665295, longitude: 139.712081)
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
        view.delegate = context.coordinator
        //        view.addAnnotation()
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        
        view.addAnnotation(annotation)
            
        
    }
}



struct MapView_Preview: PreviewProvider {
   static var previews: some View {
        PreviewWrapper()
    }
    
    struct PreviewWrapper: View {
        @State(initialValue: false) var show_profile_nav: Bool
        
        var body: some View {
            MapView(show_profile_nav: $show_profile_nav)
        }
    }
}
