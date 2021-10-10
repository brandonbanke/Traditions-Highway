//
//  LocationBasedNotifsDelegate.swift
//  Traditions Highway
//
//  Created by Brandon Banke on 10/8/21.
//

import UserNotifications

protocol LocationBasedNotifsDelegate: UNUserNotificationCenterDelegate {
    
    /// Called when the user has denied the notification permission prompt.
    func notificationPermissionDenied()
    
    /// Called when the user has denied the location permission prompt.
    func locationPermissionDenied()
    
    /// Called when the notification request completed.
    ///
    /// - Parameter error: Optional error when trying to add the notification.
    func notificationScheduled(error: Error?)
}
