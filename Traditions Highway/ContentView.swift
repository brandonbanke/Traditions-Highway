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
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 32.700264, longitude: -82.659646) , span: MKCoordinateSpan(latitudeDelta: 3, longitudeDelta: 3))
    var body: some View {
        VStack {
            NavigationView {
                VStack {
                    Map(coordinateRegion: $region)
                        .edgesIgnoringSafeArea(.all)
                        .overlay(
                            Image("Logo")
                                .resizable()
                                .frame(width: 70.0, height: 70.0)
                                .position(x: 160, y: -60)
                        )
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
                    Button("Schedule Notification") {
                        let content = UNMutableNotificationContent()
                        content.title = "You are near Jounrnalism!"
                        content.subtitle = "We have NMIX here"
                        content.sound = UNNotificationSound.default
                        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
                        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                        UNUserNotificationCenter.current().add(request)
                    }
                    .toolbar {
                        ToolbarMenu()
                    } // Toolbar
                    .onAppear(perform: {
                        requestNotification()
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

struct ToolbarMenu: ToolbarContent {

    var body: some ToolbarContent {
        ToolbarItemGroup(placement: .bottomBar) {
            Spacer()
            
            Button(action: {
                print("Edit button was tapped")
            }, label: {
                Image(systemName: "magnifyingglass")
            })
         
            Spacer()
            
            Button(action: {
                print("Edit button was tapped")
            }) {
                Image(systemName: "house")
            }

        
            Spacer()
            
            Button(action: {
                print("Edit button was tapped")
            }, label: {
                Image(systemName: "star")
            })
            
            Spacer()
        }

    }
}

struct navButton: View {
    var imageName: String
    var color: Color
    
    var body: some View {
        Rectangle()
            .frame(width: 60, height: 60)
            .foregroundColor(color)
            .cornerRadius(5.0)
            .overlay(
            Image(systemName: imageName)
                .foregroundColor(.white)
            )
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
