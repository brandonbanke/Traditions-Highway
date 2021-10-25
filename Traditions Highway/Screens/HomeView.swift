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
    /*
    private func getNearByLandmarks() {
            
            let request = MKLocalSearch.Request()
            request.naturalLanguageQuery = search
            
            let search = MKLocalSearch(request: request)
            search.start { (response, error) in
                if let response = response {
                    
                    let mapItems = response.mapItems
                    self.landmarks = mapItems.map {_ in
                        ForEach(poi.pointsOfInterest) { pointOfInterest in
                            Landmark(placemark: pointOfInterest.placemarker)
                        }
                    }
                    
                }
                
            }
            
        }
     */
    
    func calculateOffset() -> CGFloat {
            
            if self.landmarks.count > 0 && !self.tapped {
                return UIScreen.main.bounds.size.height - UIScreen.main.bounds.size.height / 4
            }
            else if self.tapped {
                return 100
            } else {
                return UIScreen.main.bounds.size.height
            }
        }

    var body: some View {
        VStack {
            NavigationView {
                ZStack {
                    Color("BackgroundColor").ignoresSafeArea()
                    VStack {
                        Image("Logo")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                        NavigationLink(destination: FilterView(filteringList: PoiData)) {
                            startTripButton(color: .black, title: "START MY TRIP")
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
