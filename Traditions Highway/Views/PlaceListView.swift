//
//  PlaceListView.swift
//  Traditions Highway
//
//  Created by Brandon Banke on 9/28/21.
//

import SwiftUI
import MapKit

struct PlaceListView: View {
    
    let landmarks: [Landmark]
    var onTap: () -> ()
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                //EmptyView()
            }.frame(width: UIScreen.main.bounds.size.width, height: 60)
                .background(Color.black)
                .addBorder(Color.yellow, width: 2, cornerRadius: 20)
                .overlay(Text("Tap to Expand/Hide Locations").foregroundColor(.white))
                .gesture(TapGesture()
                    .onEnded(self.onTap)
            )
            
            PlaceList(landmarks: landmarks)

            
        }.cornerRadius(10)
    }
}

struct PlaceListView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceListView(landmarks: [Landmark(placemark: MKPlacemark())], onTap: {})
    }
}


struct PlaceList: View {
    let landmarks: [Landmark]
    
    var body: some View {
        List {
            
            ForEach(self.landmarks, id: \.id) { landmark in
                HStack {
                    VStack(alignment: .leading) {
                        
                        Text(landmark.name)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                        
                        Text(landmark.title)
                            .multilineTextAlignment(.leading)
                        Text(landmark.subtitle)
                            .multilineTextAlignment(.leading)
                        
                    }
                    Spacer()
                    Button {
                        let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: landmark.coordinate))
                        mapItem.name = landmark.name
                        mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving])
                    } label: {
                        Image(systemName: "map")
                            .multilineTextAlignment(.trailing)
                    }
                    
                }
            }
            
        }.id(UUID())
        .animation(nil)
        .cornerRadius(10)
    }
}
