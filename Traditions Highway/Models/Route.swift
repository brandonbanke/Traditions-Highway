//
//  Route.swift
//  Traditions Highway
//
//  Created by Brandon Banke on 10/11/21.
//

import Foundation

struct Route: Identifiable {
    var id = UUID()
    var title: String
    var image: String
    var summary: String
    var description: String
}

#if DEBUG

let routes = [
    Route(title: "YUMMMM", image: "food", summary: "Looking for some yummy, unique restaurants to hit the spot? Look no further.", description: "Wanting a food tour along Highway 15? Well here it is! By using this quick start, you will only receive notifications about the cafes and restaurants you are about to pass. Then you can listen to a quick description to determine if there is enough room in your belly for another! You’ll only hear the details about local restaurants in each of the communities along the way, so get ready for some home-cooked meals and secret recipes you’ll be dying to know the ingredients of - not to mention exceptional hospitality! This trip is not one for the meek - but is sure to add a whole lot of flavor to your trip. Click the button below to begin!"),
    
    Route(title: "ADVENTURE", image: "adventure", summary: "Parks, hiking trails, museums, shops, attractions, and more!", description: "Wanting a food tour along Highway 15? Well here it is! By using this quick start, you will only receive notifications about the cafes and restaurants you are about to pass. Then you can listen to a quick description to determine if there is enough room in your belly for another! You’ll only hear the details about local restaurants in each of the communities along the way, so get ready for some home-cooked meals and secret recipes you’ll be dying to know the ingredients of - not to mention exceptional hospitality! This trip is not one for the meek - but is sure to add a whole lot of flavor to your trip. Click the button below to begin!"),
    
    Route(title: "HISTORY BUFF", image: "history", summary: "Tell me more about all things history.", description: "Wanting a food tour along Highway 15? Well here it is! By using this quick start, you will only receive notifications about the cafes and restaurants you are about to pass. Then you can listen to a quick description to determine if there is enough room in your belly for another! You’ll only hear the details about local restaurants in each of the communities along the way, so get ready for some home-cooked meals and secret recipes you’ll be dying to know the ingredients of - not to mention exceptional hospitality! This trip is not one for the meek - but is sure to add a whole lot of flavor to your trip. Click the button below to begin!")
   
]

#endif