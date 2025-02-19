//
//  HourlyWeatherCardView.swift
//  IOSWeatherClone
//
//  Created by James Cribb on 18/02/2025.
//

import SwiftUI

struct HourlyWeatherCardView: View {
    var description: String
    var hourlyForecasts: [(hour: String, conditionImage: String, temperature: Int)]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            // Description
            Text(description)
                .font(.system(size: 14, weight: .medium))
                .foregroundColor(Color.white)
                .padding(.horizontal, 10)
                .padding(.top, 8)
            
            Divider()
                .background(Color.white)
            
            // Hourly Forecast - Scrollable
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 5) {   // adjust to fit 7 items
                    ForEach(hourlyForecasts, id: \.hour) { forecast in
                        HourView(
                            hour: forecast.hour,
                            conditionImage: forecast.conditionImage,
                            hourlyTemperature: forecast.temperature
                        )
                    }
                }
                .padding(.vertical, 10)  // Adds vertical spacing between HourViews
            }
            
        }
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.black.opacity(0.4))
        )
        .padding(.vertical, 10)
        .padding(.horizontal, 10)
    }
}

struct HourView: View {
    var hour: String = "Now"
    var conditionImage: String
    var hourlyTemperature: Int
    var body: some View {
        VStack(spacing: 8) {
            Text(hour)
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(Color.white)
            
            Image(systemName: conditionImage)
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
                .symbolRenderingMode(.palette)
                .foregroundStyle(.white, .gray)
            
            Text("\(hourlyTemperature)°")
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(Color.white)
        }
        .frame(width: 50)
    }
}

#Preview {
    HourlyWeatherCardView(
        description: """
                Cloudy conditions tonight, continuing through the morning. The lowest Feels like temperature will be 0° around 23:00.
                """,
        hourlyForecasts: [
            ("Now", "cloud.fill", 4),
            ("18", "cloud.fill", 4),
            ("19", "cloud.fill", 3),
            ("20", "cloud.rain.fill", 2),
            ("21", "cloud.rain.fill", 1),
            ("22", "moon.fill", 0),
            ("23", "moon.fill", 1),
            ("00", "moon.fill", 1),
            ("01", "cloud.fill", 1),
            ("02", "cloud.fill", 1),
            ("03", "cloud.fill", 1),
            ("04", "cloud.fill", 1),
            ("05", "cloud.fill", 1),
            ("06", "sunrise.fill", 1),
            
        ]
    )
}
