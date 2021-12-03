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
                        .font(.custom("Nexa Bold", size: 30))
                        .padding(.bottom, 30.0)
                        .padding(.top, 20.0)
                    Text("Designed with the traveler in mind, the Traditions Highway mobile app introduces travelers along Georgia State Route Highway 15 to various points of interest local to Highway 15 communities. Regardless of their location on the 346 mile-long highway, users can create their travel itinerary based on the categories they find most interesting such as history, nature, dining, or attractions. Whether they are a foodie looking for top-rated local restaurants, or simply just passing through with no specific agenda, hopefully this app will inspire people to embrace the detours on their next journey.")
                        .font(.custom("Frontis-Light", size: 22))
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                // MARK: Sources
                Text("Sources")
                    .font(.custom("Nexa Bold", size: 18))
                ScrollView {
                    VStack {
                        
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
                    
                    VStack {
                        //MARK: Greensboro County
                        Text("Greensboro County")
                            .font(.custom("Nexus Light", size: 16))

                        Link("Holcomb’s Bar-B-Que", destination: URL(string: "https://www.facebook.com/pages/Holcombs-Bar-B-Que/169809763036059")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("National Tavern at reynolds Lake Oconee", destination: URL(string: "https://www.reynoldslakeoconee.com/life/culinary")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Oconee Brewing Company", destination: URL(string: "https://www.oconeebrewingco.com")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Ripe thing Market", destination: URL(string: "https://www.facebook.com/RipeThingMarket")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Old Salem Park", destination: URL(string: "https://visitlakeoconee.com/business/old-salem-campground/")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Park Ferry Campground ", destination: URL(string: "https://visitlakeoconee.com/business/parks-ferry-campground/")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Redlands Wildlife Management Area", destination: URL(string: "https://georgiawildlife.com/redlands-wma")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Highgate Estate & Gardens", destination: URL(string: "https://www.exploregeorgia.org/greensboro/outdoors-nature/gardens-arboretums/highgate-estate-gardens")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Preserve Golf Course at Reynolds Lake", destination: URL(string: "https://www.reynoldslakeoconee.com/life/golf/the-preserve")!)
                            .font(.custom("Frontis-Light", size: 14))
                    }
                    VStack {
                        Link("Greensboro Antique Mall", destination: URL(string: "http://greensboroantiquemall.com")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Goodwin Manor", destination: URL(string: "http://www.goodwinmanor.com/")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Genuine Georgia", destination: URL(string: "https://genuinegeorgia.com")!)
                            .font(.custom("Frontis-Light", size: 14))
                        
                        
                        //MARK: Johnson County
                        Text("Johnson County")
                            .font(.custom("Nexus Light", size: 16))
                        
                        Link("Wrightsville Train Depot and Station", destination: URL(string: "https://showcasepublicationsga.com/magazines/traditions/")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Grice Inn", destination: URL(string: "https://showcasepublicationsga.com/magazines/traditions/")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Johnson County Courthouse", destination: URL(string: "https://showcasepublicationsga.com/magazines/traditions/")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Cornbread Cafe", destination: URL(string: "https://www.zmenu.com/cornbread-cafe-wrightsville-online-menu/")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Home of Herschel Walker - Johnson County High School", destination: URL(string: "https://showcasepublicationsga.com/magazines/traditions/")!)
                            .font(.custom("Frontis-Light", size: 14))
                    }
                    VStack {
                        //MARK: Oconee County
                        Text("Oconee County")
                            .font(.custom("Nexus Light", size: 16))

                        Link("Oconee Hill Cemetery", destination: URL(string: "https://www.oconeehillcemetery.com/")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Eagle Tavern Museum", destination: URL(string: "https://visitoconee.com/portfolio-item/eagle-tavern/")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Elder Mill Covered Bridge", destination: URL(string: "https://www.exploregeorgia.org/watkinsville/general/historic-sites-trails-tours/elder-mill-covered-bridge")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Oconee Brewing Company", destination: URL(string: "https://www.oconeebrewingco.com/")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Oconee River Greenway", destination: URL(string: "http://www.oconeerivergreenway.org/")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Lake Oconee", destination: URL(string: "http://georgiapowerlakes.com/oconeesinclair/")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Oconee Heritage Park", destination: URL(string: "https://www.oconeecounty.com/Facilities/Facility/Details/Heritage-Park-8")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Oconee Cultural Arts Foundation", destination: URL(string: "https://ocaf.com/")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Oconee Outfitters", destination: URL(string: "https://www.oconeeoutfitters.com/")!)
                            .font(.custom("Frontis-Light", size: 14))
                        
                    }
                    VStack {
                        Link("Classic City Clydesdales", destination: URL(string: "https://www.exploregeorgia.org/bishop/agritourism/farms-ranches/classic-city-clydesdales")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Washington Farms", destination: URL(string: "https://www.washingtonfarms.net/")!)
                            .font(.custom("Frontis-Light", size: 14))
                        
                        //MARK: Treutlen County
                        Text("Treutlen County")
                            .font(.custom("Nexus Light", size: 16))
                        
                        Link("The Perfect Scoop", destination: URL(string: "https://theperfectscoop.business.site/")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Papa Bucks", destination: URL(string: "https://papabucks.com")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Steeplechase Grill and Tavern", destination: URL(string: "http://www.thechaseison.com")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Downtown Vidalia Association", destination: URL(string: "https://www.vidaliaga.gov/dva")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Vidalia Onion Museum", destination: URL(string: "http://www.visitvidaliaga.com/attraction/vidalia-onion-museum/")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Altama Museum of Art and History", destination: URL(string: "https://www.altamamuseum.org")!)
                            .font(.custom("Frontis-Light", size: 14))
                        
                        //MARK: Washington County
                        Text("Washington County")
                            .font(.custom("Nexus Light", size: 16))
                        
                    }
                    VStack {
                        Link("Brown House Museum", destination: URL(string: "https://www.exploregeorgia.org/sandersville/arts-culture/galleries/brown-house-museum")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Warthen Old Jail", destination: URL(string: "https://www.exploregeorgia.org/warthen/general/historic-sites-trails-tours/warthen-old-jail")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Washington County Courthouse", destination: URL(string: "https://www.courts.oregon.gov/courts/washington/Pages/default.aspx")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Dairy Lane", destination: URL(string: "https://thedairylane.com/history")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Tennille Ice Cream Company", destination: URL(string: "https://www.facebook.com/The-Tennille-Ice-Cream-Company-645912629354179/")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Chester Dean’s Buffet & BBQ", destination: URL(string: "https://www.facebook.com/chesterdeansbuffetandbbq/")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Trackside Pub & Deli", destination: URL(string: "https://trackside-pub-deli.business.site/#gallery")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Hamburg State Park", destination: URL(string: "https://gastateparks.org/Hamburg")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Downtown Sandersville", destination: URL(string: "https://www.sandersvillega.org/")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("The UGA Barn", destination: URL(string: "https://showcasepublicationsga.com/magazines/traditions/")!)
                            .font(.custom("Frontis-Light", size: 14))
                    }
                    VStack {
                        Link("Disc Golf Depot", destination: URL(string: "https://www.pdga.com/Depot%20Disc%20Golf")!)
                            .font(.custom("Frontis-Light", size: 14))
                        Link("Fall Line Artist Guild", destination: URL(string: "https://www.exploregeorgia.org/sandersville/arts-culture/galleries/fall-line-artist-guild")!)
                            .font(.custom("Frontis-Light", size: 14))
                    }
                }
            }
            
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
