//
//  PointOfInterestInfoView.swift
//  Traditions Highway
//
//  Created by Brandon Banke on 10/11/21.
//

import SwiftUI
import MapKit

struct PointOfInterestInfoView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var showAlert = false
    @EnvironmentObject var poi: POI
    
    var pointOfInterest: PointOfInterest
    
    var POIIndex: Int {
        poi.pointsOfInterest.firstIndex(where: {$0.id == pointOfInterest.id })!
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image(pointOfInterest.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    
                HStack {
                    Text(pointOfInterest.title)
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.black)
                        .lineLimit(3)
                    Spacer()
                    VStack {
                        Button {
                            let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: pointOfInterest.locationCoordinate))
                            mapItem.name = pointOfInterest.title
                            mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving])
                        } label: {
                            Image(systemName: "map")
                                .multilineTextAlignment(.trailing)
                                .font(.system(size: 40))
                        }
                        Button(action: {
                            self.poi.pointsOfInterest[self.POIIndex].favorite.toggle()
                        }) {
                            if self.poi.pointsOfInterest[self.POIIndex].favorite {
                                Image(systemName: "star.fill")
                                    .font(.system(size: 40))
                            } else {
                                Image(systemName: "star")
                                    .font(.system(size: 40))
                            }
                        }
                    }
                }
                .padding(.bottom, 0)
                .padding(.horizontal)
                
                Text(pointOfInterest.description)
                    .font(.body)
                    .padding()
                    .lineLimit(1000)
                    .multilineTextAlignment(.leading)
            }
            
        }
        .overlay(
            
            HStack {
                Spacer()
                
                VStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    })
                    .padding(.trailing, 20)
                    .padding(.top, 40)
                    
                    Spacer()
                }
            }
        )
        
        .edgesIgnoringSafeArea(.top)
        
    }
}

struct PointOfInterestInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PointOfInterestInfoView(pointOfInterest: PoiData[0]).environmentObject(POI())
    }
}

