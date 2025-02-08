//
//  LearnSwiftUIApp.swift
//  LearnSwiftUI
//
//  Created by Jaime on 2/8/25.
//

import SwiftUI

@main
struct LearnSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(AppState())
        }
    }
}
