//
//  FilterView.swift
//  Traditions Highway
//
//  Created by Brandon Banke on 10/25/21.
//

import SwiftUI

struct FilterView: View {
    @State var isCheckedHistory:Bool = false
    @State var isCheckedDining:Bool = false
    @State var isCheckedNature:Bool = false
    @State var isCheckedAttraction:Bool = false
    //@State var filteringList: [PointOfInterest]
    @State var filteringListHistory = [PointOfInterest]()
    @State var filteringListNature = [PointOfInterest]()
    @State var filteringListDining = [PointOfInterest]()
    @State var filteringListAttraction = [PointOfInterest]()
    var body: some View {
            ZStack {
                Color("BackgroundColor").ignoresSafeArea()
                VStack {
                    Spacer()
                    Text("Filter Points Of Interest:")
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 35))
                    VStack(alignment: .leading) {
                        HStack {
                            Button(action: {
                                self.isCheckedHistory.toggle()
                                filteringListHistory = PoiData.filter {
                                    $0.category.rawValue == "History"
                                }
                            }, label: {
                                HStack {
                                    if (self.isCheckedHistory) {
                                        FilterBox()
                                            .overlay(
                                                Image(systemName: "checkmark.square")
                                                    .font(.system(size: 68))
                                                    .foregroundColor(.black)
                                            )
                                    } else {
                                        FilterBox()
                                    }
                                    Text("History")
                                        .multilineTextAlignment(.leading)
                                        .font(.system(size: 25))
                                        .foregroundColor(.black)
                                }
                            }).padding()
                            Button(action: {
                                self.isCheckedDining.toggle()
                                filteringListDining = PoiData.filter {
                                    $0.category.rawValue == "Dining"
                                }
                            }, label: {
                                HStack {
                                    if (self.isCheckedDining) {
                                        FilterBox()
                                            .overlay(
                                                Image(systemName: "checkmark.square")
                                                    .font(.system(size: 68))
                                                    .foregroundColor(.black)
                                            )
                                    } else {
                                        FilterBox()
                                    }
                                    Text("Dining")
                                        .multilineTextAlignment(.leading)
                                        .font(.system(size: 25))
                                        .foregroundColor(.black)
                                }
                            })
                        } .padding()
                        HStack {
                            Button(action: {
                                self.isCheckedNature.toggle()
                                filteringListNature = PoiData.filter {
                                    $0.category.rawValue == "Nature"
                                }
                            }, label: {
                                HStack {
                                    if (self.isCheckedNature) {
                                        FilterBox()
                                            .overlay(
                                                Image(systemName: "checkmark.square")
                                                    .font(.system(size: 68))
                                                    .foregroundColor(.black)
                                            )
                                    } else {
                                        FilterBox()
                                    }
                                    Text("Nature")
                                        .multilineTextAlignment(.leading)
                                        .font(.system(size: 25))
                                        .foregroundColor(.black)
                                }
                            }).padding()
                            Button(action: {
                                self.isCheckedAttraction.toggle()
                                filteringListAttraction = PoiData.filter {
                                    $0.category.rawValue == "Attraction"
                                }
                            }, label: {
                                HStack {
                                    if (self.isCheckedAttraction) {
                                        FilterBox()
                                            .overlay(
                                                Image(systemName: "checkmark.square")
                                                    .font(.system(size: 68))
                                                    .foregroundColor(.black)
                                            )
                                    } else {
                                        FilterBox()
                                    }
                                    Text("Attraction")
                                        .multilineTextAlignment(.leading)
                                        .font(.system(size: 25))
                                        .foregroundColor(.black)
                                }
                            })
                        }.padding()
                    }
                    Spacer()
                    NavigationLink(destination: MapScreen(filterResults: filteringListHistory+filteringListNature+filteringListDining+filteringListAttraction)) {
                            startTripButton(color: .black, title: "START")
                    }
                    Spacer()
                } // VStack
            } // ZStack
         // NavigationView
    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
    }
}
