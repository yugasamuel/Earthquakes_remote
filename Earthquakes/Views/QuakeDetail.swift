//
//  QuakeDetail.swift
//  Earthquakes
//
//  Created by Yuga Samuel on 29/12/23.
//

import SwiftUI

struct QuakeDetail: View {
    var quake: Quake
    
    var body: some View {
        VStack {
            QuakeMagnitude(quake: quake)
            Text(quake.place)
                .font(.title3)
                .bold()
            Text("\(quake.time.formatted())")
                .foregroundStyle(Color.secondary)
            if let location = quake.location {
                VStack {
                    Text("Latitude: \(location.latitude.formatted(.number.precision(.fractionLength(3))))")
                    Text("Longitude: \(location.longitude.formatted(.number.precision(.fractionLength(3))))")
                }
            }
        }
    }
}

#Preview {
    QuakeDetail(quake: Quake.preview)
}
