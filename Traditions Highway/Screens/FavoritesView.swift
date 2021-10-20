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
    var body: some View {
        ZStack {
            Color("BackgroundColor").ignoresSafeArea()
            VStack {
                Text("FAVORITES").font(.system(size: 30, weight: .bold, design: .default))
                ScrollView {
                    ForEach(pointsOfInterest.filter {
                        $0.favorite == true
                    }) { pointOfInterest in
                        CardViewPOI(pointOfInterest: pointOfInterest)
                            .onTapGesture {
                                self.selectedPOI = pointOfInterest
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
        FavoritesView(searchResults: pointsOfInterest)
    }
}
