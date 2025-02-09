//
//  StoreModel.swift
//  MVExample
//
//  Created by Jaime on 2/9/25.
//

import Foundation

@MainActor
class StoreModel: ObservableObject {
    let webService: WebService
    @Published var products: [Product] = []
    
    init(webService: WebService) {
        self.webService = webService
    }
    
    func populateProducts() async throws {
        
        products = try await webService.getProducts()
    }
}
