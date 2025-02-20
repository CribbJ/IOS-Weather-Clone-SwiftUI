//
//  HourlyWeatherCardView.swift
//  IOSWeatherClone
//
//  Created by James Cribb on 18/02/2025.
//

import SwiftUI

struct HourlyWeatherCardView: View {
    var description: String
    var hourlyForecasts: [HourlyForecast]
    
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
                    ForEach(hourlyForecasts) { forecast in
                        HourView(
                            hour: forecast.time,
                            condition: forecast.condition,
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
    var condition: WeatherCondition
    var hourlyTemperature: Int
    var body: some View {
        
        if let iconProfile = WeatherCondition.colorProfile(for: condition) {
            VStack(spacing: 8) {
                Text(hour)
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(Color.white)
                
                Image(systemName: condition.rawValue)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(iconProfile.foregroundColor, iconProfile.backgroundColor)
                
                Text("\(hourlyTemperature)°")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(Color.white)
            }
            .frame(width: 50)
        } else {
            // Fallback if icon profile is not found (This should not happen)
            Text("No Icon")
                .foregroundColor(.white)
                .frame(width: 50)
        }
    }
}


#Preview {
    
    let sampleDescription = """
        Cloudy conditions tonight, continuing through the morning. The lowest Feels like temperature will be 0° around 23:00.
    """
    
    let sampleForecast  = [
        HourlyForecast(time: "Now", condition: .sunny, temperature: 4),
        HourlyForecast(time: "18", condition: .cloudy, temperature: 4),
        HourlyForecast(time: "19", condition: .cloudy, temperature: 3),
        HourlyForecast(time: "20", condition: .rainy, temperature: 2),
        HourlyForecast(time: "21", condition: .rainy, temperature: 1),
        HourlyForecast(time: "22", condition: .night, temperature: 0),
        HourlyForecast(time: "23", condition: .night, temperature: 1),
        HourlyForecast(time: "00", condition: .night, temperature: 1),
        HourlyForecast(time: "01", condition: .cloudy, temperature: 1),
        HourlyForecast(time: "02", condition: .cloudy, temperature: 1),
        HourlyForecast(time: "03", condition: .cloudy, temperature: 1),
        HourlyForecast(time: "04", condition: .cloudy, temperature: 1),
        HourlyForecast(time: "05", condition: .cloudy, temperature: 1),
        HourlyForecast(time: "06", condition: .cloudy, temperature: 1)
    ]
    
    HourlyWeatherCardView(
        description: sampleDescription, hourlyForecasts: sampleForecast
    )

}
