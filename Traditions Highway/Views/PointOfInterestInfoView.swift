//
//  PointOfInterestInfoView.swift
//  Traditions Highway
//
//  Created by Brandon Banke on 10/11/21.
//

import SwiftUI

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
                    
                Group {
                    Text(pointOfInterest.title)
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.black)
                        .lineLimit(3)
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

