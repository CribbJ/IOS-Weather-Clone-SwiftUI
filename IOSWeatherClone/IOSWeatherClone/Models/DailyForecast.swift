//
//  DailyForecast.swift
//  IOSWeatherClone
//
//  Created by James Cribb on 19/02/2025.
//

import Foundation
import SwiftData
import SwiftUI

@Model
class DailyForecast: Identifiable, Decodable {
    var id: UUID
    var day: String
    var icon: String
    var minTemp: Int
    var maxTemp: Int
    var slider: String
    
    init(id: UUID = UUID(), day: String, icon: String, minTemp: Int, maxTemp: Int, slider: String) {
        self.id = UUID()
        self.day = day
        self.icon = icon
        self.minTemp = minTemp
        self.maxTemp = maxTemp
        self.slider = slider
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = UUID()
        self.day = try container.decode(String.self, forKey: .day)
        self.icon = try container.decode(String.self, forKey: .icon)
        self.minTemp = try container.decode(Int.self, forKey: .minTemp)
        self.maxTemp = try container.decode(Int.self, forKey: .maxTemp)
        self.slider = try container.decode(String.self, forKey: .slider)
    }
    
    enum CodingKeys: String, CodingKey {
        case day
        case icon
        case minTemp
        case maxTemp
        case slider
    }
}
