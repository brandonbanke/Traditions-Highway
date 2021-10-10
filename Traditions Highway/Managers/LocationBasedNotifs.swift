//
//  LocationBasedNotifs.swift
//  Traditions Highway
//
//  Created by Brandon Banke on 9/29/21.
//

import CoreLocation
import UserNotifications

class LocationBasedNotifs: NSObject {
    
    // MARK: - Public Properties
    
    weak var delegate: LocationBasedNotifsDelegate? {
        didSet {
            UNUserNotificationCenter.current().delegate = delegate
        }
    }
    
    // MARK: - Private Properties
    
    private let locationManager = CLLocationManager()
    
    // MARK: - Public Functions
    
    /// Request a geo location notification with optional data.
    ///
    /// - Parameter data: Data that will be sent with the notification.
    func requestNotification(with notificationInfo: LocationNotificationInfo) {
        switch CLLocationManager.authorizationStatus() {
        case .authorizedWhenInUse, .authorizedAlways, .notDetermined:
            locationManager.requestWhenInUseAuthorization()
            askForNotificationPermissions(notificationInfo: notificationInfo)
        case .restricted, .denied:
            delegate?.locationPermissionDenied()
            break
        }
    }
}

// MARK: - Private Functions
private extension LocationBasedNotifs {
    
    func askForNotificationPermissions(notificationInfo: LocationNotificationInfo) {
        guard CLLocationManager.locationServicesEnabled() else {
            return
        }
        UNUserNotificationCenter.current().requestAuthorization(
            options: [.alert, .sound, .badge],
            completionHandler: { [weak self] granted, _ in
                guard granted else {
                    self?.delegate?.notificationPermissionDenied()
                    return
                }
                self?.requestNotification(notificationInfo: notificationInfo)
        })
    }
    
    func requestNotification(notificationInfo: LocationNotificationInfo) {
        let notification = notificationContent(notificationInfo: notificationInfo)
        let destRegion = destinationRegion(notificationInfo: notificationInfo)
        let trigger = UNLocationNotificationTrigger(region: destRegion, repeats: false)
        
        let request = UNNotificationRequest(identifier: notificationInfo.notificationId,
                                            content: notification,
                                            trigger: trigger)
        
        UNUserNotificationCenter.current().add(request) { [weak self] (error) in
            DispatchQueue.main.async {
                self?.delegate?.notificationScheduled(error: error)
            }
        }
    }
    
    func notificationContent(notificationInfo: LocationNotificationInfo) -> UNMutableNotificationContent {
        let notification = UNMutableNotificationContent()
        notification.title = notificationInfo.title
        notification.body = notificationInfo.body
        notification.sound = UNNotificationSound.default
        
        if let data = notificationInfo.data {
            notification.userInfo = data
        }
        return notification
    }
    
    func destinationRegion(notificationInfo: LocationNotificationInfo) -> CLCircularRegion {
        let destRegion = CLCircularRegion(center: notificationInfo.coordinates,
                                          radius: notificationInfo.radius,
                                          identifier: notificationInfo.locationId)
        destRegion.notifyOnEntry = true
        destRegion.notifyOnExit = false
        return destRegion
    }
}

