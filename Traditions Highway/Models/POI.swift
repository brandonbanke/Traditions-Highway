//
//  POI.swift
//  Traditions Highway
//
//  Created by Brandon Banke on 10/21/21.
//

import SwiftUI
import Combine

final class POI: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var pointsOfInterest = PoiData
}
