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
                    let weatherClient = WeatherClient()

                    let location = try! await geocodingClient.coordinateByCity("Houston")
                    let weather = try! await weatherClient.fetchWeather(location: location!)
                    
                    print(weather)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
