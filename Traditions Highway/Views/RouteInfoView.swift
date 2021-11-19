//
//  RouteInfoView.swift
//  Traditions Highway
//
//  Created by Brandon Banke on 10/11/21.
//

import SwiftUI

struct RouteInfoView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var showAlert = false
    @State var filteringListHistory = [PointOfInterest]()
    @State var filteringListNature = [PointOfInterest]()
    @State var filteringListDining = [PointOfInterest]()
    @State var filteringListAttraction = [PointOfInterest]()
    
    var route: Route
    
    var body: some View {
        NavigationView {
        ScrollView {
            VStack(alignment: .leading) {
                Image(route.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    
                Group {
                    Text(route.title)
                        .font(.custom("Nexa Bold", size: 35))
                        .fontWeight(.black)
                        .lineLimit(3)
                }
                .padding(.bottom, 0)
                .padding(.horizontal)
                
                Text(route.description)
                    .font(.custom("Frontis-Light", size: 20))
                    .padding()
                    .lineLimit(1000)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(10)
                HStack {
                    Spacer()
                    NavigationLink(destination: MapScreen(filterResults: filteringListHistory+filteringListNature+filteringListDining+filteringListAttraction)) {
                            startTripButton(color: .black, title: "START TRIP")
                    }
                    Spacer()
                }
            } // VStack
            
        } .onAppear(perform: {
            if (route.title == "DINING") {
                filteringListHistory = PoiData.filter {
                    $0.category.rawValue == "Dining"
                }
            } else if (route.title == "ATTRACTIONS") {
                filteringListHistory = PoiData.filter {
                    $0.category.rawValue == "Attraction"
                }
            } else if (route.title == "HISTORY") {
                filteringListHistory = PoiData.filter {
                    $0.category.rawValue == "History"
                }
            } else if (route.title == "NATURE") {
                filteringListHistory = PoiData.filter {
                    $0.category.rawValue == "Nature"
                }
            }
        }) // ScrollView
        } // NavView
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
                } // VStack
            } // HStack
        )
        
        .edgesIgnoringSafeArea(.top)
        
    } // Body
} // Struct

struct RouteInfoView_Previews: PreviewProvider {
    static var previews: some View {
        RouteInfoView(route: routes[0])
    }
}
