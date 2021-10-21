//
//  MapScreen.swift
//  Traditions Highway
//
//  Created by Brandon Banke on 9/29/21.
//

import SwiftUI
import MapKit
import Contacts

struct MapScreen: View {
    
    @ObservedObject var locationManager = LocationManager()
    @State private var landmarks: [Landmark] = [Landmark]()
    @State private var search: String = ""
    @State private var tapped: Bool = false
    
    @ObservedObject var lm = LocationManager()
    
    var latitude: String { return("\(lm.location?.latitude ?? 0)") }
    var longitude: String { return("\(lm.location?.longitude ?? 0)") }
    var placemark: String { return("\(lm.placemark?.description ?? "XXX")") }
    //var status: String { return("\(lm.status)") }
    
    private func getNearByLandmarks() {
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = search
        
        let search = MKLocalSearch(request: request)
        search.start { (response, error) in
            if let response = response {
                
                let mapItems = response.mapItems
                self.landmarks = mapItems.map {
                    Landmark(placemark: $0.placemark)
                }
                
            }
            
        }
        
        
    }
    
    
    func loadLocations() {
        let landmarkList = LandmarkList.landmarkList
        self.landmarks = landmarkList
    }
    
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
        ZStack(alignment: .top) {
            
            MapView(landmarks: landmarks)
                .ignoresSafeArea()
                .onAppear(perform: {
                    loadLocations()
                })
            /*
            PlaceListView(landmarks: self.landmarks) {
                self.tapped.toggle()
            }.animation(.spring())
                .offset(y: calculateOffset())
            */
        }
    }
}

struct MapScreen_Previews: PreviewProvider {
    static var previews: some View {
        MapScreen()
    }
}
