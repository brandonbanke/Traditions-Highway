//
//  Coordinator.swift
//  Traditions Highway
//
//  Created by Brandon Banke on 9/21/21.
//

import Foundation
import MapKit

final class Coordinator: NSObject, MKMapViewDelegate {
    
    var control: MapView
    init(_ control: MapView) {
        self.control = control
    }
    
}
