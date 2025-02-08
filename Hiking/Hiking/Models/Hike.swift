//
//  Hike.swift
//  Hiking
//
//  Created by Jaime on 2/8/25.
//

import Foundation

struct Hike: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let photo: String
    let miles: Double
}
