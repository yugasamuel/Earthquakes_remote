//
//  QuakeDetail.swift
//  Earthquakes
//
//  Created by Yuga Samuel on 29/12/23.
//

import SwiftUI

struct QuakeDetail: View {
    var quake: Quake
    @EnvironmentObject private var quakesProvider: QuakesProvider
    @State private var location: QuakeLocation? = nil
    
    var body: some View {
        VStack {
            QuakeMagnitude(quake: quake)
            Text(quake.place)
                .font(.title3)
                .bold()
            Text("\(quake.time.formatted())")
                .foregroundStyle(Color.secondary)
            if let location = self.location {
                VStack {
                    Text("Latitude: \(location.latitude.formatted(.number.precision(.fractionLength(3))))")
                    Text("Longitude: \(location.longitude.formatted(.number.precision(.fractionLength(3))))")
                }
            }
        }
        .task {
            if self.location == nil {
                if let quakeLocation = quake.location {
                    self.location = quakeLocation
                } else {
                    self.location = try? await quakesProvider.location(for: quake)
                }
            }
        }
    }
}

#Preview {
    QuakeDetail(quake: Quake.preview)
        .environmentObject(QuakesProvider())
}
