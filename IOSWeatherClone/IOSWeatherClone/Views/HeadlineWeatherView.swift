//
//  HeadlineWeatherView.swift
//  IOSWeatherClone
//
//  Created by James Cribb on 18/02/2025.
//

import SwiftUI

struct HeadlineWeatherView: View {
    var location: String
    var nowTemperature: Int
    var feelslikeTemperature: Int
    var maxTemperature: Int
    var minTemperature: Int
    
    var body: some View {
        VStack {
            Text(location)
                .font(.system(size: 28, weight: .bold))
                .foregroundColor(Color.white)
            Text("\(nowTemperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(Color.white)
            Text("Feels Like: \(feelslikeTemperature)°")
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(Color.white)
            Text("H:\(maxTemperature)°  L:\(minTemperature)°")
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(Color.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding(.top, 50)   // adjust for the notch
    }
}

#Preview {
    HeadlineWeatherView (
        location: "Manchester",
        nowTemperature: 4,
        feelslikeTemperature: 1,
        maxTemperature: 7,
        minTemperature: 2
    )
}
