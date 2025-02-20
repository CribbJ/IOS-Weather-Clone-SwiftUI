//
//  JSONLoader.swift
//  IOSWeatherClone
//
//  Created by James Cribb on 19/02/2025.
//

import Foundation

struct JSONLoader {
    static func load<T: Decodable>(_ filename: String, as type: T.Type) -> T? {
        guard let url = Bundle.main.url(forResource: filename, withExtension: "json") else {
            print("❌ Error: Could not find \(filename).json in bundle.")
            return nil
        }

        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            print("❌ JSON Decoding Error: \(error)")
            return nil
        }
    }
}

