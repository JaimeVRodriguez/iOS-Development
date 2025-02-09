//
//  Location.swift
//  Weatherly
//
//  Created by Jaime on 2/8/25.
//

import Foundation

struct Location: Decodable {
    let name: String
    let lat: Double
    let lon: Double
}
