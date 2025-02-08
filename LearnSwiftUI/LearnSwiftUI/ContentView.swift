//
//  ContentView.swift
//  LearnSwiftUI
//
//  Created by Jaime on 2/8/25.
//

import SwiftUI

struct LightBulbView: View {
    
    @Binding var isOn: Bool
    
    var body: some View {
        
        VStack {
            Image(systemName: isOn ? "lightbulb.fill" : "lightbulb")
                .font(.largeTitle)
                .foregroundStyle(isOn ? .yellow : .gray)
            Button("Toggle") {
                isOn.toggle()
            }
        }
            
    }
}

struct ContentView: View {
    
    @State private var isOn = false
    
    var body: some View {
        VStack {
            LightBulbView(isOn: $isOn)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(isOn ? .black : .white)
    }
}

#Preview {
    ContentView()
}
