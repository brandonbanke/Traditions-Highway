//
//  FavoritesView.swift
//  Traditions Highway
//
//  Created by Brandon Banke on 10/10/21.
//

import SwiftUI

struct FavoritesView: View {
    @State var selectedPOI: PointOfInterest?
    @State var searchResults: [PointOfInterest]
    @EnvironmentObject var poi: POI
    var body: some View {
        ZStack {
            Color("BackgroundColor").ignoresSafeArea()
            VStack {
                Text("FAVORITES").font(.system(size: 30, weight: .bold, design: .default))
                ScrollView {
                    ForEach(poi.pointsOfInterest) { pointOfInterest in
                        if pointOfInterest.favorite {
                        CardViewPOI(pointOfInterest: pointOfInterest)
                            .onTapGesture {
                                self.selectedPOI = pointOfInterest
                            }
                        }
                    }
                    .listRowBackground(Color("BackgroundColor"))
                    .sheet(item: self.$selectedPOI) { pointOfInterest in
                        PointOfInterestInfoView(pointOfInterest: pointOfInterest)
                    }
                }
            }
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView(searchResults: PoiData).environmentObject(POI())
    }
}
