//
//  ContentView.swift
//  Weatherly
//
//  Created by Jaime on 2/8/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var city: String = ""
    @State private var isFetchingWeather: Bool = false
    @State private var weather: Weather?
    
    let geoCodingClient = GeoCodingClient()
    let weatherClient = WeatherClient()
    
    private func fetchWeather() async {
        do {
            guard let location = try await geoCodingClient.coordinateByCity(city) else { return }
            weather = try await weatherClient.fetchWeather(location: location)
        } catch {
            print(error)
        }
    }
    
    private func getWeather() async {
        isFetchingWeather = true
        if isFetchingWeather {
            await fetchWeather()
            isFetchingWeather = false
            city = ""
        }
    }
    
    var body: some View {
        VStack {
            TextField("City", text: $city)
                .textFieldStyle(.roundedBorder)
                .font(.system(size: 35))
//                .onSubmit {
//                    isFetchingWeather = true
//                }.task(id: isFetchingWeather) {
//                    if isFetchingWeather {
//                        await fetchWeather()
//                        isFetchingWeather = false
//                        city = ""
//                    }
//                }
                .padding(.bottom)
            Button {
                Task {
                    await getWeather()
                }
                
            } label: {
                Label("Get Weather", systemImage: "cloud.sun.rain.fill")
                    .font(.title)
                    .padding()
                    .frame(minWidth: 200)
                    .foregroundColor(.blue)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.blue, lineWidth: 2)
                    )
            }
            
            Spacer()
            
            if let weather {
                Text(MeasurementFormatter.temperature(value: weather.temp))
                    .font(.system(size: 100))
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
