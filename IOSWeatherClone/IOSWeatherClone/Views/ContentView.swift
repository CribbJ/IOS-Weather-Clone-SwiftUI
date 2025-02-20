//
//  ContentView.swift
//  IOSWeatherClone
//
//  Created by James Cribb on 18/02/2025.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @State private var dailyForecasts: [DailyForecast] = []
    @State private var hourlyForecasts: [HourlyForecast] = []
    
    var body: some View {
        
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                
                HeadlineWeatherView (
                    location: "Manchester",
                    nowTemperature: 4,
                    feelslikeTemperature: 1,
                    maxTemperature: 7,
                    minTemperature: 2
                )
                
                ScrollView {
                    // Hourly Weather
                    HourlyWeatherCardView(
                        description: """
                                Cloudy conditions tonight, continuing through the morning. The lowest Feels like temperature will be 0° around 23:00.
                                """,
                        hourlyForecasts: hourlyForecasts
                    )
                    
                    // 10-day Forecast
                    TenDayForecastCardView(
                        cardImage: "calendar",
                        dailyForecasts: dailyForecasts
                    )
                }
                .padding(.top, 250)

            }
            .onAppear {
                
                // Load the daily forecast data
                if let forecasts: [DailyForecast] = JSONLoader.load("dayData", as: [DailyForecast].self) {
                    self.dailyForecasts = forecasts
                }
                
                // Load the hourly forecast data
                if let hourlyData: [HourlyForecast] = JSONLoader.load("hourlyData", as: [HourlyForecast].self) {
                    self.hourlyForecasts = hourlyData
                }
            }
        }
    }
}
                

#Preview {
    ContentView()
}


