//
//  NumberFortmatter+Extentsion.swift
//  MVExample
//
//  Created by Jaime on 2/9/25.
//

import Foundation
extension NumberFormatter {
    static var currency: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }
}
