////
////  WeatherIconColorProfiles.swift
////  IOSWeatherClone
////
////  Created by James Cribb on 20/02/2025.
////
//import SwiftUI
//
//enum WeatherCondition: String, Codable {
//    case sunny = "sun.max.fill"
//    case partlyCloudy = "cloud.sun.fill"
//    case cloudy = "cloud.fill"
//    case overcast = "cloud"
//    case rainy = "cloud.heavy.rain.fill"
//    case thunderstorm = "cloud.bolt.fill"
//    case snowy = "snow"
//    case hail = "cloud.hail.fill"
//    case fog = "cloud.fog.fill"
//    case windy = "wind"
//    case dust = "dust"
//    case freezingRain = "cloud.freezing.rain.fill"
//    case showers = "cloud.rain.fill"
//    case night = "moon.fill"
//    case nightCloudy = "cloud.moon.fill"
//}
//
//struct WeatherIconColorProfile {
//    var foregroundColor: Color
//    var backgroundColor: Color
//}
//
//// Create a static dictionary that holds the color profiles for each weather condition
//extension WeatherCondition {
//    static let colorProfiles: [WeatherCondition: WeatherIconColorProfile] = [
//        .sunny: WeatherIconColorProfile(foregroundColor: .yellow, backgroundColor: Color(UIColor.systemYellow)),
//        .partlyCloudy: WeatherIconColorProfile(foregroundColor: .yellow, backgroundColor: Color(UIColor.systemGray5)),
//        .cloudy: WeatherIconColorProfile(foregroundColor: .gray, backgroundColor: Color(UIColor.systemGray6)),
//        .overcast: WeatherIconColorProfile(foregroundColor: .white, backgroundColor: Color(UIColor.darkGray)),
//        .rainy: WeatherIconColorProfile(foregroundColor: .blue, backgroundColor: Color(UIColor.systemBlue)),
//        .thunderstorm: WeatherIconColorProfile(foregroundColor: .yellow, backgroundColor: Color(UIColor.systemGray)),
//        .snowy: WeatherIconColorProfile(foregroundColor: .white, backgroundColor: Color(UIColor.systemBlue)),
//        .hail: WeatherIconColorProfile(foregroundColor: .white, backgroundColor: Color(UIColor.systemGray4)),
//        .fog: WeatherIconColorProfile(foregroundColor: .gray, backgroundColor: Color(UIColor.systemGray5).opacity(0.6)),
//        .windy: WeatherIconColorProfile(foregroundColor: .blue, backgroundColor: Color.white),
//        .dust: WeatherIconColorProfile(foregroundColor: .brown, backgroundColor: Color(UIColor.systemGray4)),
//        .freezingRain: WeatherIconColorProfile(foregroundColor: .blue, backgroundColor: Color(UIColor.systemBlue).opacity(0.7)),
//        .showers: WeatherIconColorProfile(foregroundColor: .blue, backgroundColor: Color(UIColor.systemGray)),
//        .night: WeatherIconColorProfile(foregroundColor: .white, backgroundColor: Color.black),
//        .nightCloudy: WeatherIconColorProfile(foregroundColor: .white, backgroundColor: Color(UIColor.darkGray))
//    ]
//    
//    // Function to retrieve the color profile for a given weather condition
//    static func colorProfile(for condition: WeatherCondition) -> WeatherIconColorProfile? {
//        return colorProfiles[condition]
//    }
//}
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
    
    // Custom initializer to create WeatherCondition from a string
    init(fromString string: String) {
        switch string.lowercased() {
        case "sunny":
            self = .sunny
        case "partlycloudy":
            self = .partlyCloudy
        case "cloudy":
            self = .cloudy
        case "overcast":
            self = .overcast
        case "rainy":
            self = .rainy
        case "thunderstorm":
            self = .thunderstorm
        case "snowy":
            self = .snowy
        case "hail":
            self = .hail
        case "fog":
            self = .fog
        case "windy":
            self = .windy
        case "dust":
            self = .dust
        case "freezingrain":
            self = .freezingRain
        case "showers":
            self = .showers
        case "night":
            self = .night
        case "nightcloudy":
            self = .nightCloudy
        default:
            self = .sunny // default fallback
        }
    }
}

struct WeatherIconColorProfile {
    var foregroundColor: Color
    var backgroundColor: Color
}

// Create a static dictionary that holds the color profiles for each weather condition
extension WeatherCondition {
    static let colorProfiles: [WeatherCondition: WeatherIconColorProfile] = [
        .sunny: WeatherIconColorProfile(foregroundColor: .yellow, backgroundColor: Color(UIColor.systemYellow)),
        .partlyCloudy: WeatherIconColorProfile(foregroundColor: .yellow, backgroundColor: Color(UIColor.systemGray5)),
        .cloudy: WeatherIconColorProfile(foregroundColor: .gray, backgroundColor: Color(UIColor.systemGray6)),
        .overcast: WeatherIconColorProfile(foregroundColor: .white, backgroundColor: Color(UIColor.darkGray)),
        .rainy: WeatherIconColorProfile(foregroundColor: .blue, backgroundColor: Color(UIColor.systemBlue)),
        .thunderstorm: WeatherIconColorProfile(foregroundColor: .yellow, backgroundColor: Color(UIColor.systemGray)),
        .snowy: WeatherIconColorProfile(foregroundColor: .white, backgroundColor: Color(UIColor.systemBlue)),
        .hail: WeatherIconColorProfile(foregroundColor: .white, backgroundColor: Color(UIColor.systemGray4)),
        .fog: WeatherIconColorProfile(foregroundColor: .gray, backgroundColor: Color(UIColor.systemGray5).opacity(0.6)),
        .windy: WeatherIconColorProfile(foregroundColor: .blue, backgroundColor: Color.white),
        .dust: WeatherIconColorProfile(foregroundColor: .brown, backgroundColor: Color(UIColor.systemGray4)),
        .freezingRain: WeatherIconColorProfile(foregroundColor: .blue, backgroundColor: Color(UIColor.systemBlue).opacity(0.7)),
        .showers: WeatherIconColorProfile(foregroundColor: .blue, backgroundColor: Color(UIColor.systemGray)),
        .night: WeatherIconColorProfile(foregroundColor: .white, backgroundColor: Color.black),
        .nightCloudy: WeatherIconColorProfile(foregroundColor: .white, backgroundColor: Color(UIColor.darkGray))
    ]
    
    // Function to retrieve the color profile for a given weather condition
    static func colorProfile(for condition: WeatherCondition) -> WeatherIconColorProfile? {
        return colorProfiles[condition]
    }
}

