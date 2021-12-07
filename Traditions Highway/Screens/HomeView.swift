//
//  HomeView.swift
//  Traditions Highway
//
//  Created by Brandon Banke on 10/10/21.
//

import SwiftUI
import MapKit
import Foundation
import UserNotifications
import CoreLocation

struct HomeView: View {
    @ObservedObject var locationManager = LocationManager()
    @State private var landmarks: [PointOfInterest] = [PointOfInterest]()
    @State private var search: String = ""
    @State private var tapped: Bool = false
    @State var selectedRoute: Route?
    @EnvironmentObject var poi: POI

    var body: some View {
        VStack {
            NavigationView {
                ZStack {
                    Color("BackgroundColor").ignoresSafeArea()
                    VStack {
                        HStack(alignment: .center) {
                            Spacer()
                            Image("Logo")
                                .resizable()
                                .frame(width: 70.0, height: 70.0)
                                .padding(.leading, 50.0)
                            Spacer()
                            NavigationLink(destination: AboutView()) {
                                Image(systemName: "info.circle")
                                    .font(.system(size: 30))
                                    .padding(.trailing, 20.0)
                            }
                        }
                        NavigationLink(destination: FilterView()) {
                            startTripButton(color: .black, title: "CUSTOMIZE MY TRIP")
                        }
                        Spacer()
                        ScrollView {
                        ForEach(routes) { route in
                            CardView(route: route)
                                .onTapGesture {
                                    self.selectedRoute = route
                                }
                            Spacer()
                        }
                        .listRowBackground(Color("BackgroundColor"))
                        .sheet(item: self.$selectedRoute) { route in
                            RouteInfoView(route: route)
                        }
                            
                        }
                        Spacer()
                        Spacer()
                        .onAppear(perform: {
                            requestNotification()
                            locationManager.validateLocationAuthorizationStatus()
                        }) // onAppear
                    } // VStack
                } // ZStack
                .navigationBarHidden(true)
            } // NavigationView
        } // VStack
    } // Body
} // Struct

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject(POI())
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
