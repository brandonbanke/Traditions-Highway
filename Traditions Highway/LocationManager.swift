//
//  LocationManager.swift
//  Traditions Highway
//
//  Created by Brandon Banke on 9/21/21.
//

import Foundation
import MapKit
import CoreLocation
import Combine

/*
class LocationManager: NSObject, ObservableObject {
    
    private let locationManager = CLLocationManager()
    @Published var location: CLLocation? = nil
    
    override init() {
        super.init()
        self.locationManager.delegate = self
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager.distanceFilter = kCLDistanceFilterNone
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.startUpdatingLocation()
    }
    
}

extension LocationManager: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else {
            return
        }
        self.location = location
    }
    
}
 */

class LocationManager: NSObject,CLLocationManagerDelegate, ObservableObject {
private let manager: CLLocationManager
var willChange = PassthroughSubject<LocationManager, Never>()

var getLat: String = ""
var getLon: String = ""

@Published var lastKnownLocation: CLLocation?

func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
    if status == .denied {
        print("denied")
    }
    else{
        print("athorized")
        manager.requestLocation()
    }
}

func start() {
    manager.requestWhenInUseAuthorization()
    manager.startUpdatingLocation()
}

init(manager: CLLocationManager = CLLocationManager()) {
    self.manager = manager
    super.init()
}

func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
    print(error.localizedDescription)
}

func startUpdating() {
    self.manager.delegate = self
    self.manager.requestWhenInUseAuthorization()
    self.manager.startUpdatingLocation()
}

func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    //print(locations)
    lastKnownLocation = locations.last
    
    getLat = "\(locations.last!.coordinate.latitude)"
    getLon = "\(locations.last!.coordinate.longitude)"
    
    showLocation()
}

func showLocation() {
    print("from showLocation")
    print("Latitude: \(getLat)")
    print("Longitude: \(getLon)")
}
}
