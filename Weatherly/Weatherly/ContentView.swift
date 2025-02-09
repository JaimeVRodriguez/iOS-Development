//
//  ContentView.swift
//  Weatherly
//
//  Created by Jaime on 2/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Get Coordinates") {
                Task {
                    let geocodingClient = GeoCodingClient()
                    let location = try! await geocodingClient.coordinateByCity("Houston")
                    print(location)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
