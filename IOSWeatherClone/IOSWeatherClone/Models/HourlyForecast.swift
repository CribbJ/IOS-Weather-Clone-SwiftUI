//
//  HourlyForecast.swift
//  IOSWeatherClone
//
//  Created by James Cribb on 19/02/2025.
//
import Foundation
import SwiftData
import SwiftUI

@Model
class HourlyForecast: Identifiable, Decodable {
    var id: UUID
    var time: String
    var icon: String
    var temperature: Int
    
    init(id: UUID = UUID(), time: String, icon: String, temperature: Int) {
        self.id = id
        self.time = time
        self.icon = icon
        self.temperature = temperature
    }
    
    required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = UUID()
            self.time = try container.decode(String.self, forKey: .time)
            self.icon = try container.decode(String.self, forKey: .icon)
            self.temperature = try container.decode(Int.self, forKey: .temperature)
        }
    
    enum CodingKeys: String, CodingKey {
            case time
            case icon
            case temperature
        }
        
}
