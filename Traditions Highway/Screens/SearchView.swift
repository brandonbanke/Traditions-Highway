//
//  SearchView.swift
//  Traditions Highway
//
//  Created by Brandon Banke on 10/10/21.
//

import SwiftUI

struct SearchView: View {
    @State private var selectedPOI: PointOfInterest?
    @State private var searchText = ""
    @State private var isEditing = false
    @State var searchResults: [PointOfInterest]
    var body: some View {
        ZStack {
            Color("BackgroundColor").ignoresSafeArea()
            VStack {
                Text("SEARCH").font(.system(size: 30, weight: .bold, design: .default))
                TextField("Search ...", text: $searchText)
                    .padding(7)
                    .padding(.horizontal, 25)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .overlay(
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 8)
                            if isEditing {
                                Button(action: {
                                    self.searchText = searchText
                                    searchResults = pointsOfInterest.filter {
                                        $0.title.contains(searchText)
                                    }
                                }) {
                                    Image(systemName: "multiply.circle.fill")
                                        .foregroundColor(.gray)
                                        .padding(.trailing, 8)
                                }
                            }
                        }
                    )
                    .padding(.horizontal, 10)
                    .onTapGesture {
                        self.isEditing = true
                    }
                    if isEditing {
                        Button(action: {
                            self.isEditing = false
                            self.searchText = ""
                        }) {
                            Text("Cancel")
                        }
                        .padding(.trailing, 10)
                        .transition(.move(edge: .trailing))
                        .animation(.default)
                    }
                
                ScrollView {
                    ForEach(pointsOfInterest.filter {
                        $0.title.contains(searchText)
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

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(searchResults: pointsOfInterest)
    }
}
