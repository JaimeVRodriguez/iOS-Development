//
//  APIEndpoint.swift
//  Weatherly
//
//  Created by Jaime on 2/8/25.
//

import Foundation

enum APIEndpoint {
    static let baseURL = "https://api.openweathermap.org"
    
    case coordinatesByLocationName(String)
    case weatherByLatLon(Double, Double)
    
    private var path: String {
        switch self {
        case .coordinatesByLocationName(let city):
            return "/geo/1.0/direct?q=\(city)&appid=\(Constants.Keys.weatherApiKey)"
        case .weatherByLatLon(let lat, let lon):
            return"/data/2.5/weather?lat=\(lat)&lon=\(lon)&appid=\(Constants.Keys.weatherApiKey)"
        }
    }
    
    static func endpointURL(for endpoint: APIEndpoint) -> URL {
        let endpointPath = endpoint.path
        return URL(string: baseURL + endpointPath)!
    }
}
