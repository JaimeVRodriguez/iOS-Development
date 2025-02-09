//
//  Product.swift
//  MVExample
//
//  Created by Jaime on 2/9/25.
//

import Foundation

struct Product: Decodable, Identifiable {
    let id: Int
    let title: String
    let price: Double
}
