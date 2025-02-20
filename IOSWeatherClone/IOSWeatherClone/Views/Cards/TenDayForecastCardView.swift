//
//  TenDayForecastCardView.swift
//  IOSWeatherClone
//
//  Created by James Cribb on 18/02/2025.
//

import SwiftUI
import SwiftData

struct TenDayForecastCardView: View {
    var cardImage: String
    var dailyForecasts: [DailyForecast]
    
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
                ForEach(dailyForecasts) { forecast in
                    DayView(
                        day: forecast.day,
                        conditionImage: forecast.icon,
                        minTemperature: forecast.minTemp,
                        maxTemperature: forecast.maxTemp,
                        sliderInfo: forecast.slider
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
    let sampleImage = "calendar"
    
    let sampleForecasts = [
        DailyForecast(day: "Today", icon: "cloud.sun.fill", minTemp: -1, maxTemp: 7, slider: "Sunny"),
        DailyForecast(day: "Wed", icon: "cloud.fill", minTemp: 2, maxTemp: 10, slider: "Cloudy"),
        DailyForecast(day: "Thu", icon: "cloud.rain.fill", minTemp: 5, maxTemp: 12, slider: "Rainy"),
        DailyForecast(day: "Fri", icon: "cloud.moon.fill", minTemp: 4, maxTemp: 8, slider: "Partly Cloudy"),
        DailyForecast(day: "Sat", icon: "sun.max.fill", minTemp: 6, maxTemp: 12, slider: "Sunny"),
        DailyForecast(day: "Sun", icon: "cloud.sun.fill", minTemp: 5, maxTemp: 11, slider: "Partly Sunny"),
        DailyForecast(day: "Mon", icon: "cloud.fill", minTemp: 3, maxTemp: 9, slider: "Cloudy"),
        DailyForecast(day: "Tue", icon: "cloud.rain.fill", minTemp: 4, maxTemp: 7, slider: "Rainy"),
        DailyForecast(day: "Wed", icon: "cloud.bolt.fill", minTemp: 6, maxTemp: 10, slider: "Stormy")
    ]
    
    TenDayForecastCardView(cardImage: sampleImage, dailyForecasts: sampleForecasts)
}
