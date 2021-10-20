//
//  PointOfInterest.swift
//  Traditions Highway
//
//  Created by Brandon Banke on 10/11/21.
//

import Foundation
import MapKit

struct PointOfInterest: Identifiable {
    var id = UUID()
    var title: String
    var image: String
    var summary: String
    var description: String
    var coordinates: CLLocationCoordinate2D
    var category: String
    var favorite: Bool
}

#if DEBUG

let pointsOfInterest = [
    
    // MARK: Greensboro (Restaurants/Shops)
    PointOfInterest(title: "Goodwin Manor Bed & Breakfast", image: "goodwin_manor", summary: "Goodwin Manor is a two-story antebellum house nestled on two acres just blocks from downtown.", description: "This church has a fascinating history. This text would say all sorts of interesting things like idk what to put here, but maybe interesting things like lorem ipsum lorem ipsum lorem ipsum etc etc etc and and and cool cool cool and so on and so on and so on and so on and so on and then and then foreverrrrrrrr and everrrrrrrrr and everrrrrrr. It is super interesting. I love reading all of this text about this place. Now I want to stop here to get more out of my road trip. I am the ideal consumer for this app. Make me one of your personas. This church has a fascinating history. This text would say all sorts of interesting things like idk what to put here, but maybe interesting things like lorem ipsum lorem ipsum lorem ipsum etc etc etc and and and cool cool cool and so on and so on and so on and so on and so on and then and then foreverrrrrrrr and everrrrrrrrr and everrrrrrr. It is super interesting. I love reading all of this text about this place. Now I want to stop here to get more out of my road trip. I am the ideal consumer for this app. Make me one of your personas. It is super interesting. I love reading all of this text about this place. Now I want to stop here.", coordinates: CLLocationCoordinate2DMake(33.572646, -83.182439), category: "", favorite: false),
    
    PointOfInterest(title: "Holcomb’s Bar-B-Que", image: "holcomb_bbq", summary: "Holcomb's Bar-B-Que is more than just awesome 'que, it's a tradition for generations of patrons.", description: "This church has a fascinating history. This text would say all sorts of interesting things like idk what to put here, but maybe interesting things like lorem ipsum lorem ipsum lorem ipsum etc etc etc and and and cool cool cool and so on and so on and so on and so on and so on and then and then foreverrrrrrrr and everrrrrrrrr and everrrrrrr. It is super interesting. I love reading all of this text about this place. Now I want to stop here to get more out of my road trip. I am the ideal consumer for this app. Make me one of your personas. This church has a fascinating history. This text would say all sorts of interesting things like idk what to put here, but maybe interesting things like lorem ipsum lorem ipsum lorem ipsum etc etc etc and and and cool cool cool and so on and so on and so on and so on and so on and then and then foreverrrrrrrr and everrrrrrrrr and everrrrrrr. It is super interesting. I love reading all of this text about this place. Now I want to stop here to get more out of my road trip. I am the ideal consumer for this app. Make me one of your personas. It is super interesting. I love reading all of this text about this place. Now I want to stop here.", coordinates: CLLocationCoordinate2DMake(33.575872, -83.187904), category: "", favorite: false),
    
    
    // MARK: Hancock (Restaurants/Shops)
    PointOfInterest(title: "Courson’s Winery", image: "courson_winery", summary: "Courson's Winery is situated 10 miles from downtown Sparta and boasts 14 different traditional Southern wines.", description: "This church has a fascinating history. This text would say all sorts of interesting things like idk what to put here, but maybe interesting things like lorem ipsum lorem ipsum lorem ipsum etc etc etc and and and cool cool cool and so on and so on and so on and so on and so on and then and then foreverrrrrrrr and everrrrrrrrr and everrrrrrr. It is super interesting. I love reading all of this text about this place. Now I want to stop here to get more out of my road trip. I am the ideal consumer for this app. Make me one of your personas. This church has a fascinating history. This text would say all sorts of interesting things like idk what to put here, but maybe interesting things like lorem ipsum lorem ipsum lorem ipsum etc etc etc and and and cool cool cool and so on and so on and so on and so on and so on and then and then foreverrrrrrrr and everrrrrrrrr and everrrrrrr. It is super interesting. I love reading all of this text about this place. Now I want to stop here to get more out of my road trip. I am the ideal consumer for this app. Make me one of your personas. It is super interesting. I love reading all of this text about this place. Now I want to stop here.", coordinates: CLLocationCoordinate2DMake(33.179291, -83.077120), category: "", favorite: false),
    
    
    // MARK: Nature
    PointOfInterest(title: "Elder Mill Covered Bridge", image: "elder_bridge", summary: "The Elder Mill Covered Bridge is one of thirteen functioning covered bridges in Georgia, and the only covered bridge along the Georgia Antebellum Trail", description: "This church has a fascinating history. This text would say all sorts of interesting things like idk what to put here, but maybe interesting things like lorem ipsum lorem ipsum lorem ipsum etc etc etc and and and cool cool cool and so on and so on and so on and so on and so on and then and then foreverrrrrrrr and everrrrrrrrr and everrrrrrr. It is super interesting. I love reading all of this text about this place. Now I want to stop here to get more out of my road trip. I am the ideal consumer for this app. Make me one of your personas. This church has a fascinating history. This text would say all sorts of interesting things like idk what to put here, but maybe interesting things like lorem ipsum lorem ipsum lorem ipsum etc etc etc and and and cool cool cool and so on and so on and so on and so on and so on and then and then foreverrrrrrrr and everrrrrrrrr and everrrrrrr. It is super interesting. I love reading all of this text about this place. Now I want to stop here to get more out of my road trip. I am the ideal consumer for this app. Make me one of your personas. It is super interesting. I love reading all of this text about this place. Now I want to stop here.", coordinates: CLLocationCoordinate2DMake(33.802994, -83.363710), category: "", favorite: false),
    
    PointOfInterest(title: "Oconee Joe", image: "oconee_joe", summary: "Guided Kayak and Canoe Trips Along the Oconee River From Athens, Georgia to Lake Oconee, Georgia.", description: "This church has a fascinating history. This text would say all sorts of interesting things like idk what to put here, but maybe interesting things like lorem ipsum lorem ipsum lorem ipsum etc etc etc and and and cool cool cool and so on and so on and so on and so on and so on and then and then foreverrrrrrrr and everrrrrrrrr and everrrrrrr. It is super interesting. I love reading all of this text about this place. Now I want to stop here to get more out of my road trip. I am the ideal consumer for this app. Make me one of your personas. This church has a fascinating history. This text would say all sorts of interesting things like idk what to put here, but maybe interesting things like lorem ipsum lorem ipsum lorem ipsum etc etc etc and and and cool cool cool and so on and so on and so on and so on and so on and then and then foreverrrrrrrr and everrrrrrrrr and everrrrrrr. It is super interesting. I love reading all of this text about this place. Now I want to stop here to get more out of my road trip. I am the ideal consumer for this app. Make me one of your personas. It is super interesting. I love reading all of this text about this place. Now I want to stop here.", coordinates: CLLocationCoordinate2DMake(33.795173, -83.416498), category: "", favorite: false),
    
    PointOfInterest(title: "Heritage Park", image: "heritage_park", summary: "Heritage Park is 364 acres of attractive park setting with woods, creeks, and the Appalachee River.", description: "This church has a fascinating history. This text would say all sorts of interesting things like idk what to put here, but maybe interesting things like lorem ipsum lorem ipsum lorem ipsum etc etc etc and and and cool cool cool and so on and so on and so on and so on and so on and then and then foreverrrrrrrr and everrrrrrrrr and everrrrrrr. It is super interesting. I love reading all of this text about this place. Now I want to stop here to get more out of my road trip. I am the ideal consumer for this app. Make me one of your personas. This church has a fascinating history. This text would say all sorts of interesting things like idk what to put here, but maybe interesting things like lorem ipsum lorem ipsum lorem ipsum etc etc etc and and and cool cool cool and so on and so on and so on and so on and so on and then and then foreverrrrrrrr and everrrrrrrrr and everrrrrrr. It is super interesting. I love reading all of this text about this place. Now I want to stop here to get more out of my road trip. I am the ideal consumer for this app. Make me one of your personas. It is super interesting. I love reading all of this text about this place. Now I want to stop here.", coordinates: CLLocationCoordinate2DMake(33.441376, -84.120407), category: "", favorite: false),
    
    PointOfInterest(title: "Okefenokee Swamp", image: "okefenokee_swamp", summary: "The Okefenokee Swamp is a shallow, 438,000-acre, peat-filled wetland straddling the Georgia–Florida line in the United States.", description: "This church has a fascinating history. This text would say all sorts of interesting things like idk what to put here, but maybe interesting things like lorem ipsum lorem ipsum lorem ipsum etc etc etc and and and cool cool cool and so on and so on and so on and so on and so on and then and then foreverrrrrrrr and everrrrrrrrr and everrrrrrr. It is super interesting. I love reading all of this text about this place. Now I want to stop here to get more out of my road trip. I am the ideal consumer for this app. Make me one of your personas. This church has a fascinating history. This text would say all sorts of interesting things like idk what to put here, but maybe interesting things like lorem ipsum lorem ipsum lorem ipsum etc etc etc and and and cool cool cool and so on and so on and so on and so on and so on and then and then foreverrrrrrrr and everrrrrrrrr and everrrrrrr. It is super interesting. I love reading all of this text about this place. Now I want to stop here to get more out of my road trip. I am the ideal consumer for this app. Make me one of your personas. It is super interesting. I love reading all of this text about this place. Now I want to stop here.",coordinates: CLLocationCoordinate2DMake(31.056348, -82.271735), category: "", favorite: false)
   
]

#endif
