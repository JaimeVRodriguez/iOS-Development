//
//  ContentView.swift
//  LearnSwiftUI
//
//  Created by Jaime on 2/8/25.
//

import SwiftUI
import Observation

//Pre iOS 17
//class AppState: ObservableObject {
//    @Published var isOn: Bool = false
//}

@Observable
class AppState {
    var isOn: Bool = false
}

struct LightBulbView: View {
    @Environment(AppState.self) private var appState: AppState
    
    var body: some View {
        @Bindable var appState = appState
        
        VStack {
            Image(systemName: appState.isOn ? "lightbulb.fill" : "lightbulb")
                .font(.largeTitle)
                .foregroundStyle(appState.isOn ? .yellow : .gray)
            Toggle(appState.isOn ? "Turn Off" : "Turn On", isOn: $appState.isOn)
                .foregroundStyle(appState.isOn ? .gray : .black)
//            Button("Toggle") {
//                appState.isOn.toggle()
//            }
        }
    }
}

struct LightRoomView: View {
  
    var body: some View {
        LightBulbView()
    }
}

struct ContentView: View {
//    Pre iOS17
//    @EnvironmentObject private var appState: AppState
    
    @Environment(AppState.self) private var appState: AppState
    
    var body: some View {
        VStack {
            LightRoomView()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(appState.isOn ? .black : .white)
    }
}

#Preview {
    ContentView()
//    Pre iOS 17
//        .environmentObject(AppState())
        .environment(AppState())
}
