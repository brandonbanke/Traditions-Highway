//
//  ViewController.swift
//  Traditions Highway
//
//  Created by Brandon Banke on 10/3/21.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    var locationManager = CLLocationManager()
    var mapView = MKMapView()
    var screenSize = UIScreen.main.bounds

    override func viewDidLoad() {
        super.viewDidLoad()

        self.locationManager.delegate = self
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager.distanceFilter = kCLDistanceFilterNone
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.startUpdatingLocation()

        mapView = MKMapView(frame: CGRect(x: 0, y: 0, width: screenSize.width, height: screenSize.height))
        mapView.showsUserLocation = true
        mapView.delegate = self
        view.addSubview(mapView)

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        print("In the location, seems we got some error \(error.description)")
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let locValue : CLLocationCoordinate2D = locationManager.location!.coordinate
        let center = CLLocation(latitude: locValue.latitude, longitude: locValue.longitude)
        let region = MKCoordinateRegion(center: locValue, latitudinalMeters: 2000, longitudinalMeters: 2000)
        mapView.setRegion(region, animated: true)
        mapView.centerCoordinate = locValue
        print(center)
    }
}
