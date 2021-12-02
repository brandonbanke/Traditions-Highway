//
//  AboutView.swift
//  Traditions Highway
//
//  Created by Brandon Banke on 11/29/21.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor").ignoresSafeArea()
            VStack {
                VStack {
                    Text("ABOUT")
                        .font(.custom("Nexa Bold", size: 20))
                        .padding(.bottom, 100.0)
                    Spacer()
                    Text("Designed with the traveler in mind, the Traditions Highway mobile app introduces travelers along Georgia State Route Highway 15 to various points of interest local to Highway 15 communities. Regardless of their location on the 346 mile-long highway, users can create their travel itinerary based on the categories they find most interesting such as history, nature, dining, or attractions. Whether they are a foodie looking for top-rated local restaurants, or simply just passing through with no specific agenda, hopefully this app will inspire people to embrace the detours on their next journey.")
                        .font(.custom("Frontis-Light", size: 16))
                    Spacer()
                }
                VStack {
                    
                    // MARK: Sources
                    Text("Sources")
                        .font(.custom("Nexa Bold", size: 18))
                    
                    //MARK: Appling County
                    Text("Appling County")
                        .font(.custom("Nexus Light", size: 16))
                    Link("Appling County Heritage Center", destination: URL(string: "https://www.exploregeorgia.org/baxley/general/historic-sites-trails-tours/appling-county-heritage-center")!)
                        .font(.custom("Frontis-Light", size: 14))
                    Link("Bank Of Surrency", destination: URL(string: "https://en.wikipedia.org/wiki/Bank_of_Surrency")!)
                        .font(.custom("Frontis-Light", size: 14))
                    Link("Sips and Such Cafe", destination: URL(string: "https://www.facebook.com/Sips-and-Such-Cafe-of-Baxley-108539810757431/")!)
                        .font(.custom("Frontis-Light", size: 14))
                    Link("K&L Barbecue", destination: URL(string: "https://m.facebook.com/KL-BBQ-192266027463212/photos/")!)
                        .font(.custom("Frontis-Light", size: 14))
                    Link("Hardware 341 Grill", destination: URL(string: "https://www.restaurantji.com/ga/baxley/hardware-pizza-/")!)
                        .font(.custom("Frontis-Light", size: 14))
                    Link("Deen’s Landing", destination: URL(string: "https://www.exploregeorgia.org/baxley/places-to-stay/campgrounds-rv-parks/deens-campground")!)
                        .font(.custom("Frontis-Light", size: 14))
                    Link("Moody Forest", destination: URL(string: "https://www.nature.org/en-us/get-involved/how-to-help/places-we-protect/moody-forest-natural-area/")!)
                        .font(.custom("Frontis-Light", size: 14))
                    Link("Altahama River Bioreserve", destination: URL(string: "https://www.sherpaguides.com/georgia/coast/central_coast/altamaha_river_bioreserve.html")!)
                        .font(.custom("Frontis-Light", size: 14))
                }
                VStack {
                    //MARK: Charlton County
                    Text("Charlton County")
                        .font(.custom("Nexus Light", size: 16))
                    
                    Link("Railroad Transportation Museum", destination: URL(string: "https://southerngeorgiamagazine.com/portfolio/folkston-railroad-transportation-museum/")!)
                        .font(.custom("Frontis-Light", size: 14))
                    Link("Cheeser Island Homestead", destination: URL(string: "https://southerngeorgiamagazine.com/portfolio/chesser-island-homestead")!)
                        .font(.custom("Frontis-Light", size: 14))
                    Link("Whistlin’ Dixie", destination: URL(string: "https://www.whistlin-dixie.com/")!)
                        .font(.custom("Frontis-Light", size: 14))
                    Link("Okefenokee National Wildlife Refuge", destination: URL(string: "https://www.fws.gov/refuge/okefenokee/")!)
                        .font(.custom("Frontis-Light", size: 14))
                    Link("Folkston Funnel", destination: URL(string: "https://southerngeorgiamagazine.com/portfolio/folkston-funnel/")!)
                        .font(.custom("Frontis-Light", size: 14))
                }
                
//                VStack {
//                    //MARK: Charlton County
//                    Text("Charlton County")
//                        .font(.custom("Nexus Light", size: 16))
//
//                    Link("", destination: URL(string: "")!)
//                        .font(.custom("Frontis-Light", size: 14))
//                    Link("", destination: URL(string: "")!)
//                        .font(.custom("Frontis-Light", size: 14))
//                    Link("", destination: URL(string: "")!)
//                        .font(.custom("Frontis-Light", size: 14))
//                    Link("", destination: URL(string: "")!)
//                        .font(.custom("Frontis-Light", size: 14))
//                    Link("", destination: URL(string: "")!)
//                        .font(.custom("Frontis-Light", size: 14))
//                    Link("", destination: URL(string: "")!)
//                        .font(.custom("Frontis-Light", size: 14))
//                }
            }
            
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
