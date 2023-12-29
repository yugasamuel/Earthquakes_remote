//
//  EarthquakesApp.swift
//  Earthquakes
//
//  Created by Yuga Samuel on 29/12/23.
//

import SwiftUI

@main
struct EarthquakesApp: App {
    @StateObject var quakesProvider = QuakesProvider()
    
    var body: some Scene {
        WindowGroup {
            Quakes()
                .environmentObject(quakesProvider)
        }
    }
}
