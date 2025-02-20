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
    var condition: WeatherCondition
    var temperature: Int
    
    init(id: UUID = UUID(), time: String, condition: WeatherCondition, temperature: Int) {
        self.id = id
        self.time = time
        self.condition = condition
        self.temperature = temperature
    }
    
    required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = UUID()
            self.time = try container.decode(String.self, forKey: .time)

            let conditionString = try container.decode(String.self, forKey: .condition)
            self.condition = WeatherCondition(fromString: conditionString)
        
            self.temperature = try container.decode(Int.self, forKey: .temperature)
        }
    
    enum CodingKeys: String, CodingKey {
            case time
            case condition
            case temperature
        }
        
}
