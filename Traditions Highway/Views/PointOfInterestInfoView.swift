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
    
    var pointOfInterest: PointOfInterest
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image(pointOfInterest.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    
                HStack {
                    Text(pointOfInterest.title)
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.black)
                        .lineLimit(3)
                    Spacer()
                    Button {
                        let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: pointOfInterest.coordinates))
                        mapItem.name = pointOfInterest.title
                        mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving])
                    } label: {
                        Image(systemName: "map")
                            .multilineTextAlignment(.trailing)
                            .font(.system(size: 40))
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
        PointOfInterestInfoView(pointOfInterest: pointsOfInterest[0])
    }
}

