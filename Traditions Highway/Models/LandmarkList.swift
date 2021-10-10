//
//  LandmarkList.swift
//  Traditions Highway
//
//  Created by Brandon Banke on 10/3/21.
//

import Foundation
import MapKit
import CoreLocation
import Contacts

struct LandmarkList {
    static var landmarkList = [
        
        // MARK: Greensboro (Restaurants/Shops)
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.572646, -83.182439), addressDictionary: [CNPostalAddressStreetKey: "Goodwin Manor #", CNPostalAddressCityKey: "306 S Main St Greensboro,", CNPostalAddressPostalCodeKey: "GA 30642", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.575872, -83.187904), addressDictionary: [CNPostalAddressStreetKey: "Holcombs Bar-B-Que #", CNPostalAddressCityKey: "404 W Broad Street Greensboro,", CNPostalAddressPostalCodeKey: "GA, 30642", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        
        // MARK: Hancock (Restaurants/Shops)
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.179291, -83.077120), addressDictionary: [CNPostalAddressStreetKey: "Courson's Winery #", CNPostalAddressCityKey: "2623 SR-22 Sparta,", CNPostalAddressPostalCodeKey: "GA 31087", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        
        // MARK: Nature
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.802994, -83.363710), addressDictionary: [CNPostalAddressStreetKey: "Elder Mill Covered Bridge #", CNPostalAddressCityKey: "Elder Mill Road Watkinsville,", CNPostalAddressPostalCodeKey: "GA 30677", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.795173, -83.416498), addressDictionary: [CNPostalAddressStreetKey: "Oconee Joe #", CNPostalAddressCityKey: "Oconee River Watkinsville,", CNPostalAddressPostalCodeKey: "GA 30677", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.441376, -84.120407), addressDictionary: [CNPostalAddressStreetKey: "Heritage Park #", CNPostalAddressCityKey: "101 Lake Dow Rd McDonough,", CNPostalAddressPostalCodeKey: "GA 30252", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(31.056348, -82.271735), addressDictionary: [CNPostalAddressStreetKey: "Okefenokee Swamp #", CNPostalAddressCityKey: "5700 Okefenokee Swamp Park Rd,", CNPostalAddressPostalCodeKey: "GA 31503", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        
        // MARK: Oconee County
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.863933, -83.409398), addressDictionary: [CNPostalAddressStreetKey: "Eagle Tavern Museum #", CNPostalAddressCityKey: "26 N Main St Watkinsville,", CNPostalAddressPostalCodeKey: "GA 30677", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.847930, -83.409495), addressDictionary: [CNPostalAddressStreetKey: "E.D Stroud School #", CNPostalAddressCityKey: "191 Colham Ferry Rd Watkinsville,", CNPostalAddressPostalCodeKey: "GA 30677", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.863941, -83.409088), addressDictionary: [CNPostalAddressStreetKey: "Stoneman's Raid #", CNPostalAddressCityKey: "22 N Main St Watkinsville,", CNPostalAddressPostalCodeKey: "GA 30677", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.858152, -83.407273), addressDictionary: [CNPostalAddressStreetKey: "Birthplace of Bishop A. G. Haygood and Miss Laura A. Haygood #", CNPostalAddressCityKey: "25 S Main St Watkinsville,", CNPostalAddressPostalCodeKey: "GA 30677", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.797950, -83.425283), addressDictionary: [CNPostalAddressStreetKey: "John Andrew #", CNPostalAddressCityKey: "3842-4086 Macon Hwy Watkinsville,", CNPostalAddressPostalCodeKey: "GA 30677", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.87798614332582, -83.44570242582276), addressDictionary: [CNPostalAddressStreetKey: "Jeanette Rankin's Georgia Home #", CNPostalAddressCityKey: "1070 Woodlands Rd Watkinsville,", CNPostalAddressPostalCodeKey: "GA 30677", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        
        // MARK: Greensboro (History)
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.576745, -83.182430), addressDictionary: [CNPostalAddressStreetKey: "First Commissioner of Agriculture #", CNPostalAddressCityKey: "113 N Main St Greensboro,", CNPostalAddressPostalCodeKey: "GA 30642", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.568512, -83.177729), addressDictionary: [CNPostalAddressStreetKey: "Historic Springfield Baptist Church #", CNPostalAddressCityKey: "246-298 E Second St Greensboro,", CNPostalAddressPostalCodeKey: "GA 30642", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.576725, -83.180805), addressDictionary: [CNPostalAddressStreetKey: "Old Greene County \"Gaol\" #", CNPostalAddressCityKey: "201 E Greene St Greensboro,", CNPostalAddressPostalCodeKey: "GA 30642", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.5769621, -83.1827746), addressDictionary: [CNPostalAddressStreetKey: "Our Confederate Dead #", CNPostalAddressCityKey: "128 N Main St Greensboro,", CNPostalAddressPostalCodeKey: "GA 30642", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(34.2349249, -84.946198), addressDictionary: [CNPostalAddressStreetKey: "Original Site of Wayside Home #", CNPostalAddressCityKey: "13 E Main St Kingston,", CNPostalAddressPostalCodeKey: "GA 30145", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.5753591, -83.1826894), addressDictionary: [CNPostalAddressStreetKey: "The Burning of Greensborough #", CNPostalAddressCityKey: "113 S Main St Greensboro,", CNPostalAddressPostalCodeKey: "GA 30642", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.4724087, -83.0350217), addressDictionary: [CNPostalAddressStreetKey: "White Plains Baptist Church #", CNPostalAddressCityKey: "Main St White Plains,", CNPostalAddressPostalCodeKey: "GA 30678", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.583043, -83.180344), addressDictionary: [CNPostalAddressStreetKey: "Unkown Confederate Dead #", CNPostalAddressCityKey: "134 Memorial Dr Greensboro,", CNPostalAddressPostalCodeKey: "GA 30642", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.7036536, -83.2856923), addressDictionary: [CNPostalAddressStreetKey: "Watson Springs #", CNPostalAddressCityKey: "7000-7078 Athens Hwy Watkinsville,", CNPostalAddressPostalCodeKey: "GA 30677", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.581559273897, -83.180708780426), addressDictionary: [CNPostalAddressStreetKey: "Governer Peter Early #", CNPostalAddressCityKey: "Gov Early St Greensboro,", CNPostalAddressPostalCodeKey: "GA 30642", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.6092957, -83.3468224), addressDictionary: [CNPostalAddressStreetKey: "Fort Mathews #", CNPostalAddressCityKey: "Madison Hwy Madison,", CNPostalAddressPostalCodeKey: "GA 30650", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.5527, -83.198309), addressDictionary: [CNPostalAddressStreetKey: "Stagecoach Road #", CNPostalAddressCityKey: "2070 S Main St Greensboro,", CNPostalAddressPostalCodeKey: "GA 30642", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.6522467, -83.010032), addressDictionary: [CNPostalAddressStreetKey: "Bethesda Baptist Church #", CNPostalAddressCityKey: "1560 Besthesda Church Rd,", CNPostalAddressPostalCodeKey: "GA 30669", CNPostalAddressISOCountryCodeKey: "USA"])),

        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.555749, -83.015295), addressDictionary: [CNPostalAddressStreetKey: "Bethany Presbyterian Church #", CNPostalAddressCityKey: "3011-3157 Bethany Church Rd Greensboro,", CNPostalAddressPostalCodeKey: "GA 30642", CNPostalAddressISOCountryCodeKey: "USA"])),

        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.4358119, -83.1404216), addressDictionary: [CNPostalAddressStreetKey: "Liberty Chapel #", CNPostalAddressCityKey: "3110 Liberty Church Rd White Plains,", CNPostalAddressPostalCodeKey: "GA 30678", CNPostalAddressISOCountryCodeKey: "USA"])),

        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.6684017, -83.1748802), addressDictionary: [CNPostalAddressStreetKey: "\"Old Mercer\" #", CNPostalAddressCityKey: "1031 Mercer Cir Union Point,", CNPostalAddressPostalCodeKey: "GA 30669", CNPostalAddressISOCountryCodeKey: "USA"])),

        
        // MARK: Hancock (History)
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.4184316,-82.9515442), addressDictionary: [CNPostalAddressStreetKey: "Camilla and Zack Hubert Homesite #", CNPostalAddressCityKey: "3983 Springfield Rd Sparta,", CNPostalAddressPostalCodeKey: "GA 31087", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.3771219,-82.9113864), addressDictionary: [CNPostalAddressStreetKey: "Gov. William Rabun #", CNPostalAddressCityKey: "20618–20966 SR-22 Sparta,", CNPostalAddressPostalCodeKey: "GA 31087", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.2754683,-82.9760661), addressDictionary: [CNPostalAddressStreetKey: "Hancock County #", CNPostalAddressCityKey: "12630 Broad St Sparta,", CNPostalAddressPostalCodeKey: "GA 31087", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.2755277,-82.9756344), addressDictionary: [CNPostalAddressStreetKey: "Old Eagle Tavern #", CNPostalAddressCityKey: "12664 Broad St Sparta,", CNPostalAddressPostalCodeKey: "GA 31087", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.4290405,-82.870607), addressDictionary: [CNPostalAddressStreetKey: "Powelton Baptist Church #", CNPostalAddressCityKey: "SR-22 Sparta,", CNPostalAddressPostalCodeKey: "GA 31087", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.4693947,-82.5123659), addressDictionary: [CNPostalAddressStreetKey: "Sparta Cemetery #", CNPostalAddressCityKey: "507 Hickory Hill Dr Thomson,", CNPostalAddressPostalCodeKey: "GA  30824", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.3596078, -83.0049427), addressDictionary: [CNPostalAddressStreetKey: "Nathan S.S. Beman At Mt. Zion #", CNPostalAddressCityKey: "SR-15 Sparta,", CNPostalAddressPostalCodeKey: "GA 31087", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.2772583, -82.9731219), addressDictionary: [CNPostalAddressStreetKey: "Pierce Memorial Methodist Church #", CNPostalAddressCityKey: "600–660 Hamilton St Sparta,", CNPostalAddressPostalCodeKey: "GA 31087", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.2179719, -83.0746644), addressDictionary: [CNPostalAddressStreetKey: "Gov. Charles James McDonald #", CNPostalAddressCityKey: "270 Main St Sparta,", CNPostalAddressPostalCodeKey: "GA 31087", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.3954663, -83.0812662), addressDictionary: [CNPostalAddressStreetKey: "Shoulder-bone Creek Treaty #", CNPostalAddressCityKey: "White Plains,", CNPostalAddressPostalCodeKey: "GA 30678", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.279565, -82.9771609), addressDictionary: [CNPostalAddressStreetKey: "\"Old Dominion\" #", CNPostalAddressCityKey: "9687 Jones St Sparta,", CNPostalAddressPostalCodeKey: "GA 31087", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.3456273, -83.0995331), addressDictionary: [CNPostalAddressStreetKey: "Famous Indian Trail #", CNPostalAddressCityKey: "SR-16 Sparta,", CNPostalAddressPostalCodeKey: "GA 31087", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        
        // MARK: Washington County
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(32.9632262, -82.9570668), addressDictionary: [CNPostalAddressStreetKey: "Buffalo Creek #", CNPostalAddressCityKey: "10337–10499 SR-24 E Sandersville,", CNPostalAddressPostalCodeKey: "GA 31082", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(32.9632262, -82.9570668), addressDictionary: [CNPostalAddressStreetKey: "Buffalo Creek #", CNPostalAddressCityKey: "10337–10499 SR-24 E Sandersville,", CNPostalAddressPostalCodeKey: "GA 31082", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.0486314, -82.587343), addressDictionary: [CNPostalAddressStreetKey: "Fenn's Bridge #", CNPostalAddressCityKey: "6357–6569 Belmont Rd Louisville,", CNPostalAddressPostalCodeKey: "GA 30434", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(32.8573791, -82.8493069), addressDictionary: [CNPostalAddressStreetKey: "Irwin's Crossroads #", CNPostalAddressCityKey: "5857–6639 SR-68 Tennille,", CNPostalAddressPostalCodeKey: "GA 31089", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(33.0802091,-82.8033996), addressDictionary: [CNPostalAddressStreetKey: "President Jefferson Davis #", CNPostalAddressCityKey: "6245–6353 SR-15 Warthen,", CNPostalAddressPostalCodeKey: "GA 31094", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(32.936136,-82.811868), addressDictionary: [CNPostalAddressStreetKey: "Sherman and Hardee at Tennille #", CNPostalAddressCityKey: "Main St Tennille,", CNPostalAddressPostalCodeKey: "GA 31089", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(32.9836557, -82.8109231), addressDictionary: [CNPostalAddressStreetKey: "Washington County CourtHouse #", CNPostalAddressCityKey: "102 Malone St Sandersville,", CNPostalAddressPostalCodeKey: "GA 31082", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(32.198576,-83.1796389), addressDictionary: [CNPostalAddressStreetKey: "Jefferson Davis, Washington County #", CNPostalAddressCityKey: "5017–5083 Oak St Eastman,", CNPostalAddressPostalCodeKey: "GA 31023", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(32.9870713, -82.7819684), addressDictionary: [CNPostalAddressStreetKey: "The March to the Sea, Washington County #", CNPostalAddressCityKey: "1311–1339 E McCarty St Sandersville,", CNPostalAddressPostalCodeKey: "GA 31082", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(32.8068242, -82.9126427), addressDictionary: [CNPostalAddressStreetKey: "Sherman's Right Wing, Washington County #", CNPostalAddressCityKey: "11651 SR-68 Tennille,", CNPostalAddressPostalCodeKey: "GA 31089", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(32.9060344,-82.6645017), addressDictionary: [CNPostalAddressStreetKey: "Riddleville #", CNPostalAddressCityKey: "9690–9708 SR-242 Harrison,", CNPostalAddressPostalCodeKey: "GA 31035", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(32.9829471, -82.8120652), addressDictionary: [CNPostalAddressStreetKey: "Masonic Temple #", CNPostalAddressCityKey: "132 W Haynes StSandersville,", CNPostalAddressPostalCodeKey: "GA 31082", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(32.9826998, -82.8104057), addressDictionary: [CNPostalAddressStreetKey: "Saunders Store #", CNPostalAddressCityKey: "114 E Haynes St Sandersville,", CNPostalAddressPostalCodeKey: "GA 31082", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(32.983497, -82.8116015), addressDictionary: [CNPostalAddressStreetKey: "Governor Thomas W. Hardwick #", CNPostalAddressCityKey: "132 W Haynes St Sandersville,", CNPostalAddressPostalCodeKey: "GA 31082", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(32.8889854, -82.8489942), addressDictionary: [CNPostalAddressStreetKey: "Jared Irwin #", CNPostalAddressCityKey: "7154–7198 Ohoopee Church Rd Tennille,", CNPostalAddressPostalCodeKey: "GA 31089", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        
        // MARK: Johnson County
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(32.7295065, -82.7190827), addressDictionary: [CNPostalAddressStreetKey: "The March to the Sea, Johnson County #", CNPostalAddressCityKey: "2552 E Elm St Wrightsville,", CNPostalAddressPostalCodeKey: "GA 31096", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(32.8076111, -82.5091044), addressDictionary: [CNPostalAddressStreetKey: "Old Sunbury Road #", CNPostalAddressCityKey: "US-221 Bartow,", CNPostalAddressPostalCodeKey: "GA 30413", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        
        // MARK: Treutlen County
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(32.3364847, -82.7034165), addressDictionary: [CNPostalAddressStreetKey: "Gov. Troup's Tomb #", CNPostalAddressCityKey: "450 Troups Tomb Rd Soperton,", CNPostalAddressPostalCodeKey: "GA 30457", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        
        // MARK: Toombs County
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(32.2028558, -82.3271534), addressDictionary: [CNPostalAddressStreetKey: "Toombs County #", CNPostalAddressCityKey: "Court House Square Lyons,", CNPostalAddressPostalCodeKey: "GA 30436", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(32.2340917,-82.4055527), addressDictionary: [CNPostalAddressStreetKey: "Paul Anderson #", CNPostalAddressCityKey: "1603 McIntosh St Vidalia,", CNPostalAddressPostalCodeKey: "GA 30474", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(32.2044314, -82.3621288), addressDictionary: [CNPostalAddressStreetKey: "Home of the Vidalia Sweet Onion #", CNPostalAddressCityKey: "3105 E First St Vidalia,", CNPostalAddressPostalCodeKey: "GA 30474", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        
        // MARK: Appling County
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(31.776983, -82.3453058), addressDictionary: [CNPostalAddressStreetKey: "Pulitzer Prize Winner Caroline Pafford Miller #", CNPostalAddressCityKey: "29-33 S Oak St Baxley,", CNPostalAddressPostalCodeKey: "GA 31513", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        
        // MARK: Charlton County
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(30.7951428, -82.0369093), addressDictionary: [CNPostalAddressStreetKey: "First Masonic Lodge in Charlton County #", CNPostalAddressCityKey: "32600–32898 Okefenokee Pkwy Folkston,", CNPostalAddressPostalCodeKey: "GA 31537", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(30.8051619, -82.0358567), addressDictionary: [CNPostalAddressStreetKey: "Sardis Church #", CNPostalAddressCityKey: "440 Sardis Rd Folkston,", CNPostalAddressPostalCodeKey: "GA 31537", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(30.7951428, -82.0369093), addressDictionary: [CNPostalAddressStreetKey: "Oldest Industry in Charlton #", CNPostalAddressCityKey: "32600–32898 Okefenokee Pkwy Folkston,", CNPostalAddressPostalCodeKey: "GA 31537", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(30.9796392, -82.1204351), addressDictionary: [CNPostalAddressStreetKey: "Racepond Named For \"Race Pond\" #", CNPostalAddressCityKey: "10262–10284 US-1 N Folkston,", CNPostalAddressPostalCodeKey: "GA 31537", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(30.8327762, -82.0060046), addressDictionary: [CNPostalAddressStreetKey: "Center Village or Centerville #", CNPostalAddressCityKey: "Love St Folkston,", CNPostalAddressPostalCodeKey: "GA 31537", CNPostalAddressISOCountryCodeKey: "USA"])),
        
        Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2DMake(30.7951428, -82.0369093), addressDictionary: [CNPostalAddressStreetKey: "Trader's Hill (Fort Alert) #", CNPostalAddressCityKey: "32600–32898 Okefenokee Pkwy Folkston,", CNPostalAddressPostalCodeKey: "GA 31537", CNPostalAddressISOCountryCodeKey: "USA"]))

    
    ]
}

