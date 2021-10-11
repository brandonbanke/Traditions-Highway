//
//  LocationManager.swift
//  Traditions Highway
//
//  Created by Brandon Banke on 9/27/21.
//

import Foundation
import CoreLocation
import Combine
import UserNotifications


extension LocationManager: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        self.status = status
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        self.location = location
        self.geocode()
    }
}

extension CLLocation {
    var latitude: Double {
        return self.coordinate.latitude
    }
    
    var longitude: Double {
        return self.coordinate.longitude
    }
}

class LocationManager: NSObject, ObservableObject {
    lazy var storeRegion = makeStoreRegion()
    let notificationCenter = UNUserNotificationCenter.current()
    private let geocoder = CLGeocoder()
    private let locationManager = CLLocationManager()
    let objectWillChange = PassthroughSubject<Void, Never>()

    @Published var status: CLAuthorizationStatus? {
        willSet { objectWillChange.send() }
    }

    @Published var location: CLLocation? {
        willSet { objectWillChange.send() }
    }

    override init() {
        super.init()

        self.locationManager.delegate = self
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.startUpdatingLocation()
    }

    @Published var placemark: CLPlacemark? {
        willSet { objectWillChange.send() }
      }
    
    private func geocode() {
        guard let location = self.location else { return }
        geocoder.reverseGeocodeLocation(location, completionHandler: { (places, error) in
          if error == nil {
            self.placemark = places?[0]
          } else {
            self.placemark = nil
          }
        })
      }
    
    private func makeStoreRegion() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 33.953034, longitude: -83.366465),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }

    
    func validateLocationAuthorizationStatus() {
      // 2
      switch locationManager.authorizationStatus {
      // 3
      case .notDetermined, .denied, .restricted:
        // 4
        print("Location Services Not Authorized")
        locationManager.requestWhenInUseAuthorization()
        requestNotificationAuthorization()

      // 5
      case .authorizedWhenInUse, .authorizedAlways:
        // 6
        print("Location Services Authorized")
        requestNotificationAuthorization()

      default:
        break
      }
    }
    
    private func requestNotificationAuthorization() {
      // 2
        let options: UNAuthorizationOptions = [.sound, .alert, .badge]
      // 3
      notificationCenter
        .requestAuthorization(options: options) { [weak self] result, _ in
          // 4
          print("Auth Request result: \(result)")
          if result {
            self?.registerNotification()
          }
        }
    }
    
    private func registerNotification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Your Location"
      notificationContent.body = "This is a location based notification!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: storeRegion, repeats: false)

      // 4
      let request = UNNotificationRequest(
        identifier: UUID().uuidString,
        content: notificationContent,
        trigger: trigger)

      // 5
      notificationCenter
        .add(request) { error in
          if error != nil {
            print("Error: \(String(describing: error))")
          }
        }
    }
    
}
