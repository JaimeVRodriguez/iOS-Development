//
//  Weather.swift
//  Weatherly
//
//  Created by Jaime on 2/8/25.
//

import Foundation

struct WeatherResponse: Decodable {
    let main: Weather
}

struct Weather: Decodable {
    let temp: Double
}
