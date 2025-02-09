//
//  MVExampleApp.swift
//  MVExample
//
//  Created by Jaime on 2/9/25.
//

import SwiftUI

@main
struct MVExampleApp: App {
    @State private var storeModel = StoreModel(webService: WebService())
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(storeModel)
        }
    }
}
