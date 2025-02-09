//
//  ContentView.swift
//  MVExample
//
//  Created by Jaime on 2/9/25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var storeModel: StoreModel
    
    private func populateProducts() async {
        do{
            try await storeModel.populateProducts()
        } catch {
            print(error)
        }
    }
    
    var body: some View {
        VStack {
            List(storeModel.products) { product in
                Text(product.title)
                Text(product.price as NSNumber, formatter: NumberFormatter.currency)
            }
        }.task {
            await populateProducts()
        }
        .padding()
    }
}

#Preview {
    ContentView().environmentObject(StoreModel(webService: WebService()))
}
