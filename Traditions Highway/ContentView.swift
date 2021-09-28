//
//  ContentView.swift
//  Traditions Highway
//
//  Created by Brandon Banke on 9/7/21.
//

import SwiftUI
import MapKit
import Foundation
import UserNotifications
import CoreLocation

struct ContentView: View {
    @State private var search: String = ""
    @ObservedObject var locationManager = LocationManager()
    //@StateObject var locationViewModel = LocationViewModel()
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 32.700264, longitude: -82.659646) , span: MKCoordinateSpan(latitudeDelta: 3, longitudeDelta: 3))

    var body: some View {
        VStack {
            NavigationView {
                VStack {
                    ZStack() {
                        
                        //Map(coordinateRegion: $region)
                        MapView()
                            .edgesIgnoringSafeArea(.all)
                            .overlay(
                                Image("Logo")
                                    .resizable()
                                    .frame(width: 70.0, height: 70.0)
                                    .position(x: 160, y: -60)
                            )
                        TextField("Search", text: $search, onEditingChanged: {_ in}) {
                            //commit
                        }
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .position(x: 160, y:285)
                    }

                    Spacer()
                    HStack {
                        NavigationLink(destination: Landmarks()) {
                            navButton(imageName: "mappin.and.ellipse", color: .green)
                        }
                        NavigationLink(destination: Landmarks()) {
                            navButton(imageName: "f.circle", color: .red)
                        }
                        NavigationLink(destination: Landmarks()) {
                            navButton(imageName: "paintbrush", color: .purple)
                        }
                        NavigationLink(destination: Landmarks()) {
                            navButton(imageName: "tag", color: .blue)
                        }
                    } // HStack
                    Spacer()
                    Spacer()
                    HStack {
                        Button("Schedule Notification") {
                            scheduleNotification()
                        }
                    }
                    .toolbar {
                        ToolbarMenu()
                    } // Toolbar
                    .onAppear(perform: {
                        requestNotification()
                        //locationViewModel.requestPermission()
                    })
                } // VStack
            } // NavigationView
        } // VStack
    } // Body
} // Struct

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func requestNotification() {
    UNUserNotificationCenter.current()
        .requestAuthorization(options: [.alert, .badge, .sound]) {success, error in
            if success {
                print("all set")
            } else if let error = error {
                print(error.localizedDescription)
            }
        }
}

func scheduleNotification() {
    let content = UNMutableNotificationContent()
    content.title = "You are near Journalism!"
    content.subtitle = "We have NMIX here"
    content.sound = UNNotificationSound.default
    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
    let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
    UNUserNotificationCenter.current().add(request)
}
