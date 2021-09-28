//
//  StructViews.swift
//  Traditions Highway
//
//  Created by Brandon Banke on 9/14/21.
//

import SwiftUI
import CoreLocation

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

struct RequestLocationView: View {
    @EnvironmentObject var locationViewModel: LocationViewModel
    
    var body: some View {
        VStack {
            Image(systemName: "location.circle")
                .resizable()
                .frame(width: 20, height: 20, alignment: .center)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Button(action: {
                locationViewModel.requestPermission()
            }, label: {
                Label("Allow tracking", systemImage: "location")
                    .font(.system(size: 10))
            })
            .padding(10)
            .foregroundColor(.white)
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            Text("We need your permission to track you.")
                .foregroundColor(.gray)
                .font(.system(size: 10))
        }
    }
}


struct ErrorView: View {
    var errorText: String
    
    var body: some View {
        VStack {
            Image(systemName: "xmark.octagon")
                .frame(width: 8, height: 8, alignment: .center)
            Text(errorText)
                .font(.system(size: 15))
        }
        .padding()
        .foregroundColor(.white)
        .background(Color.red)
    }
}

struct TrackingView: View {
    @EnvironmentObject var locationViewModel: LocationViewModel
    
    
    var body: some View {
        VStack {
            Text("Location Enabled")
            /*
            VStack {
                Text(coordinate?.latitude ?? 0)
                Text("Longitude:")
                Text(coordinate?.longitude ?? 0)
                Text("Altitude")
                Text(locationViewModel.lastSeenLocation?.altitude ?? 0)
                Text("Speed")
                Text(locationViewModel.lastSeenLocation?.speed ?? 0)
                Text("Country")
                Text(locationViewModel.currentPlacemark?.country ?? "")
                Text("City")
                Text(locationViewModel.currentPlacemark?.administrativeArea ?? "")
            }
            .padding()
        }
 */
    }
    /*
    var coordinate: CLLocationCoordinate2D? {
        locationViewModel.lastSeenLocation?.coordinate
    }
 */
}
}
