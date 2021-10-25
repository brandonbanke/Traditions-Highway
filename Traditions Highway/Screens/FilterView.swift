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
    @State var filteringList: [PointOfInterest]
    var body: some View {
        NavigationView {
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
                            })
                            Button(action: {
                                self.isCheckedDining.toggle()
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
                            })
                            Button(action: {
                                self.isCheckedAttraction.toggle()
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
                    NavigationLink(destination: MapScreen(filterResults: filteringList)) {
                            startTripButton(color: .black, title: "START")
                    }
                    Spacer()
                } // VStack
            } // ZStack
        } // NavigationView
    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView(filteringList: PoiData)
    }
}
