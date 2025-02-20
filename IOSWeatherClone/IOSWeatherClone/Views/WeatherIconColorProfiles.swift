//
//  WeatherIconColorProfiles.swift
//  IOSWeatherClone
//
//  Created by James Cribb on 20/02/2025.
//
import SwiftUI

enum WeatherCondition: String, Codable {
    case sunny = "sun.max.fill"
    case partlyCloudy = "cloud.sun.fill"
    case cloudy = "cloud.fill"
    case overcast = "cloud"
    case rainy = "cloud.heavy.rain.fill"
    case thunderstorm = "cloud.bolt.fill"
    case snowy = "snow"
    case hail = "cloud.hail.fill"
    case fog = "cloud.fog.fill"
    case windy = "wind"
    case dust = "dust"
    case freezingRain = "cloud.freezing.rain.fill"
    case showers = "cloud.rain.fill"
    case night = "moon.fill"
    case nightCloudy = "cloud.moon.fill"
}

struct WeatherIconColorProfile {
    var foregroundColor: Color
    var backgroundColor: Color

    // Static method to return appropriate color profile based on the weather condition
    static func colorProfile(for condition: WeatherCondition) -> WeatherIconColorProfile {
        switch condition {
        case .sunny:
            return WeatherIconColorProfile(foregroundColor: .yellow, backgroundColor: Color(UIColor.systemYellow))
            
        case .partlyCloudy:
            return WeatherIconColorProfile(foregroundColor: .yellow, backgroundColor: Color(UIColor.systemGray5))
            
        case .cloudy:
            return WeatherIconColorProfile(foregroundColor: .gray, backgroundColor: Color(UIColor.systemGray6))
            
        case .overcast:
            return WeatherIconColorProfile(foregroundColor: .white, backgroundColor: Color(UIColor.darkGray))
            
        case .rainy:
            return WeatherIconColorProfile(foregroundColor: .blue, backgroundColor: Color(UIColor.systemBlue))
            
        case .thunderstorm:
            return WeatherIconColorProfile(foregroundColor: .yellow, backgroundColor: Color(UIColor.systemGray))
            
        case .snowy:
            return WeatherIconColorProfile(foregroundColor: .white, backgroundColor: Color(UIColor.systemBlue))
            
        case .hail:
            return WeatherIconColorProfile(foregroundColor: .white, backgroundColor: Color(UIColor.systemGray4))
            
        case .fog:
            return WeatherIconColorProfile(foregroundColor: .gray, backgroundColor: Color(UIColor.systemGray5).opacity(0.6))
            
        case .windy:
            return WeatherIconColorProfile(foregroundColor: .blue, backgroundColor: Color(UIColor.white))
            
        case .dust:
            return WeatherIconColorProfile(foregroundColor: .brown, backgroundColor: Color(UIColor.systemGray4))
            
        case .freezingRain:
            return WeatherIconColorProfile(foregroundColor: .blue, backgroundColor: Color(UIColor.systemBlue).opacity(0.7))
            
        case .showers:
            return WeatherIconColorProfile(foregroundColor: .blue, backgroundColor: Color(UIColor.systemGray))
            
        case .night:
            return WeatherIconColorProfile(foregroundColor: .white, backgroundColor: Color(UIColor.black))
            
        case .nightCloudy:
            return WeatherIconColorProfile(foregroundColor: .white, backgroundColor: Color(UIColor.darkGray))
        }
    }
}
