//
//  Landmark.swift
//  Traditions Highway
//
//  Created by Brandon Banke on 9/28/21.
//

import Foundation
import MapKit
import Contacts

struct Landmark {
    
    let placemark: MKPlacemark
    
    var id: UUID {
        return UUID()
    }
    
    var name: String {
        self.placemark.title?.components(separatedBy: "#").first ?? ""
    }
    
    var title: String {
        self.placemark.title?.components(separatedBy: "#").last?.components(separatedBy: ",").first ?? ""
    }
    
    var tempSubtitle: String {
        self.placemark.title?.components(separatedBy: "#").last ?? ""
    }
    
    var subtitle: String {
        self.tempSubtitle.components(separatedBy: ",").last ?? ""
    }
    
    var coordinate: CLLocationCoordinate2D {
        self.placemark.coordinate
    }
}
