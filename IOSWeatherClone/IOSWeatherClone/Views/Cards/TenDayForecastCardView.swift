//
//  TenDayForecastCardView.swift
//  IOSWeatherClone
//
//  Created by James Cribb on 18/02/2025.
//

import SwiftUI

struct TenDayForecastCardView: View {
    var cardImage: String
    var dailyForecasts: [(
        day: String,
        conditionImage: String,
        minTemperature: Int,
        maxTemperature: Int,
        sliderInfo: String
    )]
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image(systemName: cardImage)
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .padding(.top, 10)
                    .padding(.leading, 15)
                Text("10-DAY FORECAST")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.white)
                    .padding(.top, 10)
                    .padding(.leading, 1)
            }
            
            Divider()
                .background(Color.white)
            
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(dailyForecasts, id: \.day) { forecast in
                    DayView(
                        conditionImage: forecast.conditionImage,
                        minTemperature: forecast.minTemperature,
                        maxTemperature: forecast.maxTemperature,
                        sliderInfo: forecast.sliderInfo
                    )
                    Divider()
                        .background(Color.white)
                }
            }
        }
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.black.opacity(0.4))
        )
        .padding(.horizontal, 10)
        
    }
    
}

struct DayView: View {
    var day: String = "Today"
    var conditionImage: String
    var minTemperature: Int
    var maxTemperature: Int
    var sliderInfo: String  // Placeholder change this
    var body: some View {
        HStack {
            Text(day)
                .font(.system(size: 18, weight: .medium))
                .foregroundColor(.white)
                .frame(width: 50, alignment: .leading)
            
            
            Image(systemName: conditionImage)
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
                .foregroundColor(.white)
            
            HStack {
                Text("\(minTemperature)°")
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(.white)
                Text("\(sliderInfo)")
                    .foregroundColor(Color.white)
                Text("\(maxTemperature)°")
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(.white)
                
            }
            
        }
    }
}



#Preview {
    TenDayForecastCardView(
        cardImage: "calendar",
        dailyForecasts: [
            ("Today", "cloud.sun.fill", -1, 7, "Sunny"),
            ("Wed", "cloud.fill", 2, 10, "Cloudy"),
            ("Thu", "cloud.rain.fill", 5, 12, "Rainy"),
            ("Fri", "cloud.moon.fill", 4, 8, "Partly Cloudy"),
            ("Fri", "cloud.moon.fill", 4, 8, "Partly Cloudy"),
            ("Sat", "sun.max.fill", 6, 12, "Sunny"),
            ("Sun", "cloud.sun.fill", 5, 11, "Partly Sunny"),
            ("Mon", "cloud.fill", 3, 9, "Cloudy"),
            ("Tue", "cloud.rain.fill", 4, 7, "Rainy"),
            ("Wed", "cloud.bolt.fill", 6, 10, "Stormy")
    ])
}
