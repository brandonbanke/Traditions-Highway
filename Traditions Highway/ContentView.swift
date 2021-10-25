//
//  ContentView.swift
//  Traditions Highway
//
//  Created by Brandon Banke on 9/7/21.
//

import SwiftUI
import MapKit
import Foundation
import UserNotifications
import CoreLocation

struct ContentView: View {
    @EnvironmentObject var state: POI
    init() {
        UITabBar.appearance().backgroundColor = UIColor.init(named: "NavBar")
        }
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    barImage(color: .white, sfImage: "house")
                }
            MapScreen(filterResults: PoiData)
                .tabItem {
                    barImage(color: .white, sfImage: "mappin.and.ellipse")
                }
            FavoritesView(searchResults: PoiData)
                .tabItem {
                    barImage(color: .white, sfImage: "star")
                }
            SearchView(searchResults: PoiData)
                .tabItem {
                    barImage(color: .white, sfImage: "magnifyingglass")
                }
        }
    } // Body
} // Struct
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(POI())
    }
}

struct barImage: View {
    var color: Color
    var sfImage: String
    
    var body: some View {
        Image(systemName: sfImage)
            .foregroundColor(color)
    }
}

extension UITabBarController {
    override open func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let standardAppearance = UITabBarAppearance()
        
        standardAppearance.stackedLayoutAppearance.focused.titleTextAttributes = [.foregroundColor: UIColor.red]
        standardAppearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.red]
        standardAppearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.red]
        
        standardAppearance.inlineLayoutAppearance.focused.titleTextAttributes = [.foregroundColor: UIColor.green]
        standardAppearance.inlineLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.green]
        standardAppearance.inlineLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.green]
        
        standardAppearance.compactInlineLayoutAppearance.focused.titleTextAttributes = [.foregroundColor: UIColor.blue]
        standardAppearance.compactInlineLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.blue]
        standardAppearance.compactInlineLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.blue]
        
        tabBar.standardAppearance = standardAppearance
    }
}
