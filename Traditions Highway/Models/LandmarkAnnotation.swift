//
//  LandmarkAnnotation.swift
//  Traditions Highway
//
//  Created by Brandon Banke on 9/28/21.
//

import MapKit
import UIKit


final class LandmarkAnnotation: NSObject, MKAnnotation {
    let title: String?
    let coordinate: CLLocationCoordinate2D

    init(landmark: Landmark) {
        self.title = landmark.name
        self.coordinate = landmark.coordinate
    }
}

