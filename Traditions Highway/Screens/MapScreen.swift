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
    
    @State var filterResults: [PointOfInterest]
    
    @ObservedObject var locationManager = LocationManager()
    @State private var landmarks: [PointOfInterest] = [PointOfInterest]()
    @State private var search: String = ""
    @State private var tapped: Bool = false
    
    @ObservedObject var lm = LocationManager()
    
    var latitude: String { return("\(lm.location?.latitude ?? 0)") }
    var longitude: String { return("\(lm.location?.longitude ?? 0)") }
    var placemark: String { return("\(lm.placemark?.description ?? "XXX")") }
    func loadLocations() {
        //let landmarkList = PoiData
        let landmarkList = filterResults
        self.landmarks = landmarkList
    }
    
    @State private var showingSheet = false
    var body: some View {
        ZStack(alignment: .top) {
            
            
            MapView(landmarks: filterResults)
                .ignoresSafeArea()
                .onAppear(perform: {
                    loadLocations()
                })
            HStack {
                Button(action: {
                    showingSheet.toggle()
                }, label: {
                    Image(systemName: "list.bullet")
                        .font(.system(size: 40))
                        .padding()
                })
                .sheet(isPresented: $showingSheet) {
                    PlaceListView(filterResults: filterResults)
                }
                Spacer()
                Spacer()
            }

            
        }
    }
}

struct MapScreen_Previews: PreviewProvider {
    static var previews: some View {
        MapScreen(filterResults: PoiData)
    }
}

@available(iOS 15.0, *)
struct SheetView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        Button("Press to dismiss") {
            dismiss()
        }
        .font(.title)
        .padding()
        .background(Color.black)
    }
}

