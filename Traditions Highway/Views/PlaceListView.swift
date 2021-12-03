//
//  PlaceListView.swift
//  Traditions Highway
//
//  Created by Brandon Banke on 9/28/21.
//

import SwiftUI
import MapKit

struct PlaceListView: View {
    
    @State var selectedPOI: PointOfInterest?
    @State var filterResults: [PointOfInterest]
    var body: some View {
        List {
            ForEach(filterResults) { pointOfInterest in
                CardViewPOI(pointOfInterest: pointOfInterest)
                    .onTapGesture {
                        self.selectedPOI = pointOfInterest
                    }
            }.listRowBackground(Color("BackgroundColor"))
                .sheet(item: self.$selectedPOI) { pointOfInterest in
                    PointOfInterestInfoView(pointOfInterest: pointOfInterest)
        }
    }
} // Struct
}

struct PlaceListView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceListView(filterResults: PoiData)
    }
}
