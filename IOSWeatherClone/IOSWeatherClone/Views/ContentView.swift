//
//  ContentView.swift
//  IOSWeatherClone
//
//  Created by James Cribb on 18/02/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // Background
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .top,
                           endPoint: .bottom)
            .ignoresSafeArea()
            
//            VStack {
                
                // Headline view
                HeadlineWeatherView (
                    location: "Manchester",
                    nowTemperature: 4,
                    feelslikeTemperature: 1,
                    maxTemperature: 7,
                    minTemperature: 2
                )
                
                
                ScrollView {
                    
                    // Hourly Forecast card
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
                    
                    // Daily Forecast card
                    TenDayForecastCardView (
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
            }
        }
        
//        TabBarView()
        
    }
//}




#Preview {
    ContentView()
}


