//
//  PointOfInterest.swift
//  Traditions Highway
//
//  Created by Brandon Banke on 10/11/21.
//

import Foundation
import MapKit
import CoreLocation
import SwiftUI

struct PointOfInterest: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var imageName: String
    var summary: String
    var description: String
    fileprivate var coordinates: Coordinates
    var category: Category
    var favorite: Bool
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    enum Category: String, CaseIterable, Codable, Hashable {
        case history = "History"
        case dining = "Dining"
        case nature = "Nature"
        case attraction = "Attraction"
    }
}
/*
extension PointOfInterest {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}
*/
struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}

