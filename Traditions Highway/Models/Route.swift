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
    Route(title: "DINING", image: "food", summary: "Hungry? Find top-rated local restaurants along your trip.", description: "Wanting a food tour along Highway 15? Well here it is! By using this quick start, you will only receive notifications about the cafes and restaurants you are about to pass. Then you can listen to a quick description to determine if there is enough room in your belly for another! You’ll only hear the details about local restaurants in each of the communities along the way, so get ready for some home-cooked meals and secret recipes you’ll be dying to know the ingredients of - not to mention exceptional hospitality! This trip is not one for the meek - but is sure to add a whole lot of flavor to your trip. Click the button below to begin!"),
    
    Route(title: "ATTRACTIONS", image: "adventure", summary: "Stay entertained with sites for family, fun, fashion, and more.", description: "Wanting a food tour along Highway 15? Well here it is! By using this quick start, you will only receive notifications about the cafes and restaurants you are about to pass. Then you can listen to a quick description to determine if there is enough room in your belly for another! You’ll only hear the details about local restaurants in each of the communities along the way, so get ready for some home-cooked meals and secret recipes you’ll be dying to know the ingredients of - not to mention exceptional hospitality! This trip is not one for the meek - but is sure to add a whole lot of flavor to your trip. Click the button below to begin!"),
    
    Route(title: "HISTORY", image: "history", summary: "Visit historic sites and learn more about Georgia’s history.", description: "Wanting a food tour along Highway 15? Well here it is! By using this quick start, you will only receive notifications about the cafes and restaurants you are about to pass. Then you can listen to a quick description to determine if there is enough room in your belly for another! You’ll only hear the details about local restaurants in each of the communities along the way, so get ready for some home-cooked meals and secret recipes you’ll be dying to know the ingredients of - not to mention exceptional hospitality! This trip is not one for the meek - but is sure to add a whole lot of flavor to your trip. Click the button below to begin!"),
    
    Route(title: "NATURE", image: "relax", summary: "Trails, rivers and parks galore. Find nature sites near you.", description: "Need to destress? By using this quick start you can find all the options on Traditions Highway that will have your soul feeling refreshed! These locations range from all things nature, to some of the county's local getaway spots. Whatever you choose is sure to leave you wanting more!")
    
]

#endif
