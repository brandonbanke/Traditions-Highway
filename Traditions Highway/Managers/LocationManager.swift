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
    lazy var sanfordRegion = makeSanfordRegion()
    lazy var stegmanRegion = makeStegmanRegion()
    lazy var meyersRegion = makeMeyersRegion()
    
    // MARK: initilizing region variables
    lazy var region1001 = make1001Region()
    lazy var region1002 = make1002Region()
    lazy var region1003 = make1003Region()
    lazy var region1004 = make1004Region()
    lazy var region1005 = make1005Region()
    lazy var region1006 = make1006Region()
    lazy var region1007 = make1007Region()
    lazy var region1008 = make1008Region()
    lazy var region1009 = make1009Region()
    lazy var region1010 = make1010Region()
    lazy var region1011 = make1011Region()
    lazy var region1012 = make1012Region()
    lazy var region1013 = make1013Region()
    lazy var region1014 = make1014Region()
    lazy var region1015 = make1015Region()
    lazy var region1016 = make1016Region()
    lazy var region1017 = make1017Region()
    lazy var region1018 = make1018Region()
    lazy var region1019 = make1019Region()
    lazy var region1020 = make1020Region()
    lazy var region1021 = make1021Region()
    lazy var region1022 = make1022Region()
    lazy var region1023 = make1023Region()
    lazy var region1024 = make1024Region()
    lazy var region1025 = make1025Region()
    lazy var region1026 = make1026Region()
    lazy var region1027 = make1027Region()
    lazy var region1028 = make1028Region()
    lazy var region1029 = make1029Region()
    lazy var region1030 = make1030Region()
    lazy var region1031 = make1031Region()
    lazy var region1032 = make1032Region()
    lazy var region1033 = make1033Region()
    lazy var region1034 = make1034Region()
    lazy var region1035 = make1035Region()
    lazy var region1036 = make1036Region()
    lazy var region1037 = make1037Region()
    lazy var region1038 = make1038Region()
    lazy var region1039 = make1039Region()
    lazy var region1040 = make1040Region()
    lazy var region1041 = make1041Region()
    lazy var region1042 = make1042Region()
    lazy var region1043 = make1043Region()
    lazy var region1044 = make1044Region()
    lazy var region1045 = make1045Region()
    lazy var region1046 = make1046Region()
    lazy var region1047 = make1047Region()
    lazy var region1048 = make1048Region()
    lazy var region1049 = make1049Region()
    lazy var region1050 = make1050Region()
    lazy var region1051 = make1051Region()
    lazy var region1052 = make1052Region()
    lazy var region1053 = make1053Region()
    lazy var region1054 = make1054Region()
    lazy var region1055 = make1055Region()
    lazy var region1056 = make1056Region()
    lazy var region1057 = make1057Region()
    lazy var region1058 = make1058Region()
    lazy var region1059 = make1059Region()
    lazy var region1060 = make1060Region()
    lazy var region1061 = make1061Region()
    lazy var region1062 = make1062Region()
    lazy var region1063 = make1063Region()
    lazy var region1064 = make1064Region()
    lazy var region1065 = make1065Region()
    lazy var region1066 = make1066Region()
    lazy var region1067 = make1067Region()
    lazy var region1068 = make1068Region()
    lazy var region1069 = make1069Region()
    lazy var region1070 = make1070Region()
    
    let notificationCenter = UNUserNotificationCenter.current()
    private let geocoder = CLGeocoder()
    private let locationManager = CLLocationManager()
    let objectWillChange = PassthroughSubject<Void, Never>()
    var counter = 0;

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
          if (counter == 0) {
              print("Location Services Authorized")
              requestNotificationAuthorization()
              counter+=1;
          }
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
            self?.registerNotifications()
          }
        }
    }
    
    
    private func registerNotifications() {
        registerSanfordNotification()
        registerStegmanNotification()
        registerMeyersNotification()
        
        register1001Notification()
        register1002Notification()
        register1003Notification()
        register1004Notification()
        register1005Notification()
        register1006Notification()
        register1007Notification()
        register1008Notification()
        register1009Notification()
        register1010Notification()
        register1011Notification()
        register1012Notification()
        register1013Notification()
        register1014Notification()
        register1015Notification()
        register1016Notification()
        register1017Notification()
        register1018Notification()
        register1019Notification()
        register1020Notification()
        register1021Notification()
        register1022Notification()
        register1023Notification()
        register1024Notification()
        register1025Notification()
        register1026Notification()
        register1027Notification()
        register1028Notification()
        register1029Notification()
        register1030Notification()
        register1031Notification()
        register1032Notification()
        register1033Notification()
        register1034Notification()
        register1035Notification()
        register1036Notification()
        register1037Notification()
        register1038Notification()
        register1039Notification()
        register1040Notification()
        register1041Notification()
        register1042Notification()
        register1043Notification()
        register1044Notification()
        register1045Notification()
        register1046Notification()
        register1047Notification()
        register1048Notification()
        register1049Notification()
        register1050Notification()
        register1051Notification()
        register1052Notification()
        register1053Notification()
        register1054Notification()
        register1055Notification()
        register1056Notification()
        register1057Notification()
        register1058Notification()
        register1059Notification()
        register1060Notification()
        register1061Notification()
        register1062Notification()
        register1063Notification()
        register1064Notification()
        register1065Notification()
        register1066Notification()
        register1067Notification()
        register1068Notification()
        register1069Notification()
        register1070Notification()
        
    }
    
    
    // MARK: Testing geolocations
    
    private func makeSanfordRegion() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 33.950238, longitude: -83.374380),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func registerSanfordNotification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Sanford Stadium"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: sanfordRegion, repeats: false)

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
    
    
    
    // Stegman
    private func makeStegmanRegion() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 33.943027, longitude: -83.377482),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func registerStegmanNotification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Stegman Stadium"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: stegmanRegion, repeats: false)

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
    
    // Meyer
    private func makeMeyersRegion() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 33.946329, longitude: -83.376252),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func registerMeyersNotification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Meyers Quad"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: meyersRegion, repeats: false)

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
    
    
    
    
    // MARK: Geolocation region creation
    
    
    private func make1001Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 31.7828, longitude: -82.3500),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1001Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Appling County Heritage Center"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1001, repeats: false)

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
    
    private func make1002Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 31.723753, longitude: -82.196928),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1002Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Bank of Surrency"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1002, repeats: false)

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
    
    private func make1003Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 31.785000, longitude: -82.349856),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1003Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Sips and Such Cafe"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1003, repeats: false)

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
    
    private func make1004Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 31.776659, longitude: -82.351271),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1004Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to K&L Barbecue"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1004, repeats: false)

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
    
    private func make1005Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 31.785068, longitude: -82.362571),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1005Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Hardware 341 Grill"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1005, repeats: false)

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
    
    private func make1006Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 31.766217, longitude: -82.353781),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1006Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Dick’s Wings and Grill"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1006, repeats: false)

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
    
    private func make1007Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 31.939926, longitude: -82.378293),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1007Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Deen's Landing"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1007, repeats: false)

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
    
    private func make1008Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 31.9107128, longitude: -82.3106979),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1008Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to the Moody Forest"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1008, repeats: false)

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
    
    private func make1009Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 31.421320, longitude: -81.612378),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1009Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to the Altamaha River Bioreserve"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1009, repeats: false)

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
    
    private func make1010Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 30.8323, longitude: -82.0087),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1010Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to the Railroad Transportation Museum"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1010, repeats: false)

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
    
    private func make1011Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 30.7417, longitude: -82.1171),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1011Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Chesser Island Homestead"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1011, repeats: false)

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
    
    private func make1012Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 30.8293, longitude: -82.0254),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1012Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Whistlin’ Dixie"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1012, repeats: false)

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
    
    private func make1013Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 30.7420, longitude: -82.1167),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1013Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to the Okefenokee National Wildlife Refuge"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1013, repeats: false)

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
    
    private func make1014Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 30.8301, longitude: -82.0102),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1014Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to the Folkston Funnel"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1014, repeats: false)

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
    
    private func make1015Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 33.568512, longitude: -83.177729),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1015Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to the Historic Springfield Baptist Church"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1015, repeats: false)

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
    
    private func make1016Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 33.587199, longitude: -83.168386),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1016Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to the Old Gaol"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1016, repeats: false)

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
    
    private func make1017Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 33.575872, longitude: -83.187904),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1017Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Holcomb’s Bar-B-Que"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1017, repeats: false)

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
    
    private func make1018Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 33.422872, longitude: -83.210405),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1018Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to the National Tavern at Reynolds Lake Oconee"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1018, repeats: false)

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
    
    private func make1019Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 33.179291, longitude: -83.077120),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1019Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Courson’s Winery"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1019, repeats: false)

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
    
    private func make1020Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 33.577768, longitude: -83.184291),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1020Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Oconee Brewing Company"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1020, repeats: false)

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
    
    private func make1021Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 33.575819, longitude: -83.183905),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1021Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Ripe Thing Market"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1021, repeats: false)

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
    
    private func make1022Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 31.056348, longitude: -82.271735),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1022Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to the Okefenokee Swamp"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1022, repeats: false)

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
    
    private func make1023Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 33.795173, longitude: -83.416498),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1023Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Oconee Joe"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1023, repeats: false)

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
    
    private func make1024Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 33.450943, longitude: -83.234752),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1024Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Old Salem Park"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1024, repeats: false)

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
    
    private func make1025Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 33.521987, longitude: -83.269065),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1025Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Park Ferry Campground"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1025, repeats: false)

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
    
    private func make1026Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 33.672686, longitude: -83.265047),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1026Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Redlands Wildlife Management Area"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1026, repeats: false)

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
    
    private func make1027Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 33.577911, longitude: -83.185957),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1027Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Highgate Estate & Gardens"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1027, repeats: false)

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
    
    private func make1028Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 33.425753, longitude: -83.221095),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1028Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to The Preserve Golf Course at Reynolds Lake"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1028, repeats: false)

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
    
    private func make1029Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 33.575767, longitude: -83.182806),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1029Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Greensboro Antique Mall"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1029, repeats: false)

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
    
    private func make1030Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 33.572646, longitude: -83.182439),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1030Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Goodwin Manor"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1030, repeats: false)

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
    
    private func make1031Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 33.575722, longitude: -83.182460),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1031Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Genuine Georgia"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1031, repeats: false)

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
    
    private func make1032Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 33.278641, longitude: -82.964455),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1032Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Holsey Memorial CME Church"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1032, repeats: false)

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
    
    private func make1033Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 32.728381, longitude: -82.716292),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1033Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Wrightsville Train Depot and Station"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1033, repeats: false)

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
    
    private func make1034Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 32.729531, longitude: -82.714608),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1034Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Grice Inn"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1034, repeats: false)

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
    
    private func make1035Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 32.730549, longitude: -82.717856),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1035Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Cornbread Cafe"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1035, repeats: false)

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
    
    private func make1036Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 33.949593, longitude: -83.369601),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1036Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Oconee Hill Cementary"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1036, repeats: false)

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
    
    private func make1037Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 33.863927, longitude: -83.409357),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1037Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Eagle Tavern Museum"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1037, repeats: false)

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
    
    private func make1038Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 33.802994, longitude: -83.363710),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1038Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Elder Mill Covered Bridge"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1038, repeats: false)

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
    
    private func make1039Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 33.861493, longitude: -83.407451),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1039Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Chops and Hops"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1039, repeats: false)

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
    
    private func make1040Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 33.081029, longitude: -83.221531),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1040Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Oconee River Greenway"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1040, repeats: false)

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
    
    private func make1041Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude:  33.345351, longitude: -83.161673),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1041Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Lake Oconee"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1041, repeats: false)

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
    
    private func make1042Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 33.760953, longitude: -83.443737),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1042Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Oconee Heritage Park"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1042, repeats: false)

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
    
    private func make1043Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 33.864373, longitude: -83.405792),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1043Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Oconee Cultural Arts Foundation"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1043, repeats: false)

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
    
    private func make1044Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 33.081649, longitude: -83.227494),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1044Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Oconee Outfitters"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1044, repeats: false)

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
    
    private func make1045Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 33.790449, longitude: -83.465040),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1045Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Classic City Clydesdales"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1045, repeats: false)

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
    
    private func make1046Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 33.880496, longitude: -83.547098),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1046Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Washington Farms"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1046, repeats: false)

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
    
    private func make1047Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 32.219472, longitude: -82.412525),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1047Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to The Perfect Scoop"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1047, repeats: false)

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
    
    private func make1048Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 32.211960, longitude: -82.394434),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1048Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Papa Bucks"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1048, repeats: false)

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
    
    private func make1049Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 32.214980, longitude: -82.409691),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1049Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Steeplechase Grill and Tavern"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1049, repeats: false)

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
    
    private func make1050Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 32.217612, longitude: -82.412874),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1050Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Downtown Vidalia Association"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1050, repeats: false)

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
    
    private func make1051Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 32.204141, longitude: -82.370052),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1051Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Vidalia Onion Museum"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1051, repeats: false)

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
    
    private func make1052Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 32.211568, longitude: -82.415372),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1052Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to the Altama Museum of Art and History"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1052, repeats: false)

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
    
    private func make1053Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 32.3818, longitude: -82.5895),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1053Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Baker’s BBQ"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1053, repeats: false)

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
    
    private func make1054Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 32.3793, longitude: -82.5920),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1054Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Boneyard BBQ"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1054, repeats: false)

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
    
    private func make1055Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 32.3185, longitude: -82.5599),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1055Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to The Windmill Restaurant"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1055, repeats: false)

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
    
    private func make1056Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 31.9048, longitude: -82.5738),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1056Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Little Ocmulgee State Park"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1056, repeats: false)

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
    
    private func make1057Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 32.4764, longitude: -82.4475),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1057Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Palm Beach Island"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1057, repeats: false)

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
    
    private func make1058Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 32.377234, longitude: -82.591909),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1058Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to The Shabulous Boutique"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1058, repeats: false)

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
    
    private func make1059Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 32.3799, longitude: -82.5946),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1059Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Higgs Florist"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1059, repeats: false)

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
    
    private func make1060Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 32.9884, longitude: -82.8100),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1060Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Brown House Museum"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1060, repeats: false)

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
    
    private func make1061Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 33.1001, longitude: -82.8051),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1061Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Warthen Old Jail"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1061, repeats: false)

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
    
    private func make1062Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 32.9670, longitude: -82.8088),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1062Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to DairyLane"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1062, repeats: false)

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
    
    private func make1063Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 32.9374, longitude: -82.8120),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1063Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to The Tennille Ice Cream Company"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1063, repeats: false)

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
    
    private func make1064Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 32.983021, longitude: -82.810441),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1064Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Chester Dean’s Buffet & BBQ"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1064, repeats: false)

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
    
    private func make1065Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 32.9374, longitude: -82.8120),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1065Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Trackside Pub & Deli"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1065, repeats: false)

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
    
    private func make1066Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 33.206966, longitude: -82.778400),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1066Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Hamburg State Park"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1066, repeats: false)

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
    
    private func make1067Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 32.9836, longitude: -82.8125),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1067Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Downtown Sandersville"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1067, repeats: false)

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
    
    private func make1068Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 32.8764, longitude: -82.7808),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1068Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to The UGA Barn"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1068, repeats: false)

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
    
    private func make1069Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 32.999353887715, longitude: -82.814048647875),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1069Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Disc Golf Depot"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1069, repeats: false)

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
    
    private func make1070Region() -> CLCircularRegion {
      // 2
      let region = CLCircularRegion(
        center: CLLocationCoordinate2D(latitude: 32.9847, longitude: -82.8115),
        radius: 2,
        identifier: UUID().uuidString)
      // 3
        region.notifyOnEntry = true
        region.notifyOnExit = false
      // 4
      return region
    }
    
    private func register1070Notification() {
      // 2
      let notificationContent = UNMutableNotificationContent()
      notificationContent.title = "Welcome to Fall Line Artist Guild"
      notificationContent.body = "Click to learn more!"
      notificationContent.sound = .default

      // 3
      let trigger = UNLocationNotificationTrigger(region: region1070, repeats: false)

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
