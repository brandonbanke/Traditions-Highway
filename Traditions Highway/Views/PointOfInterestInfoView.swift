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
                    VStack(alignment: .leading) {
                        Text(pointOfInterest.title)
                            .font(.custom("Nexa Bold", size: 35))
                            .fontWeight(.black)
                            .lineLimit(3)
                        Text(pointOfInterest.address)
                            .font(.custom("Nexa Light", size: 16))
                            .multilineTextAlignment(.leading)
                    }
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
                
                VStack {
                    Text(pointOfInterest.description)
                        .font(.custom("Frontis-Light", size: 20))
                        .padding()
                        .lineLimit(1000)
                        .multilineTextAlignment(.leading)
                        .lineSpacing(10)

                    if (pointOfInterest.hasHours) {
                        Text("Hours of Operation")
                            .font(.custom("Nexa Light", size: 20))
                            .underline()
                            .padding()
                    VStack(alignment: .leading){
                        Text("Monday: " + pointOfInterest.hours.monHours)
                            .font(.custom("Frontis-Light", size: 20))
                        Text("Tuesday: " + pointOfInterest.hours.tuesHours)
                            .font(.custom("Frontis-Light", size: 20))
                        Text("Wednesday: " + pointOfInterest.hours.wedHours)
                            .font(.custom("Frontis-Light", size: 20))
                        Text("Thursday: " + pointOfInterest.hours.thursHours)
                            .font(.custom("Frontis-Light", size: 20))
                        Text("Friday: " + pointOfInterest.hours.friHours)
                            .font(.custom("Frontis-Light", size: 20))
                        Text("Saturday: " + pointOfInterest.hours.satHours)
                            .font(.custom("Frontis-Light", size: 20))
                        Text("Sunday: " + pointOfInterest.hours.sunHours)
                            .font(.custom("Frontis-Light", size: 20))
                    }
                    }
                }
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

