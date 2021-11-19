//
//  MapView.swift
//  Traditions Highway
//
//  Created by Brandon Banke on 9/27/21.
//

import Foundation
import SwiftUI
import MapKit

class Coordinator: NSObject, MKMapViewDelegate {
    
    var control: MapView
    
    init(_ control: MapView) {
        self.control = control
    }
    
    func mapView(_ mapView: MKMapView, didAdd views: [MKAnnotationView]) {
        
        if let annotationView = views.first {
            if let annotation = annotationView.annotation {
                if annotation is MKUserLocation {
                    
                    let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
                    mapView.setRegion(region, animated: true)
                    
                }
            }
        }
        
    }
    
//    func mapView(_ mapView: MKMapView, viewFor
//         annotation: MKAnnotation) -> MKAnnotationView?{
//       //Custom View for Annotation
//        let annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "customView")
//        annotationView.canShowCallout = true
//        //Your custom image icon
//        annotationView.image = UIImage(named: "locationPin")
//        return annotationView
//     }
//
}


struct MapView: UIViewRepresentable {
    
    let landmarks: [PointOfInterest]
    
    func makeUIView(context: Context) -> MKMapView {
        let map = MKMapView()
        map.showsUserLocation = true
        map.delegate = context.coordinator
        return map
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        updateAnnotations(from: uiView)
    }
    
    private func updateAnnotations(from mapView: MKMapView) {
        //mapView.removeAnnotations(mapView.annotations)
        let annotations = self.landmarks.map(LandmarkAnnotation.init)
        mapView.addAnnotations(annotations)
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager, from mapView: MKMapView) {
      // 1
      let status = manager.authorizationStatus

      // 2
      mapView.showsUserLocation = (status == .authorizedAlways)

      
    }
    @State var selectedAnnotation: LandmarkAnnotation?

    func mapView(mapView: MKMapView, didSelectAnnotationView view: MKAnnotationView) {
        self.selectedAnnotation = view.annotation as? LandmarkAnnotation
        //print(selectedAnnotation?.title)
    }
    
}

/*
func addLocations(from mapView: MKMapView) {
    @EnvironmentObject var poi: POI
    //let annotations = self.landmarks.map(LandmarkAnnotation.init)
    let annotationAr = [MKPointAnnotation]()
    ForEach(poi.pointsOfInterest) { pointOfInterest in
        let temp = MKPointAnnotation()
        temp.coordinate = CLLocationCoordinate2D(latitude: pointOfInterest.coordinates.latitude, longitude: pointOfInterest.coordinates.longitude)
        temp.title = pointOfInterest.title
        mapView.addAnnotation(temp)
 let tempVar = MKPointAnnotation()
 tempVar.coordinate = CLLocationCoordinate2D(latitude: 33.802994, longitude: -83.363710)
 tempVar.title = "Elder Bridge"
 mapView.addAnnotation(tempVar)
    }
}
*/
