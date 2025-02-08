//
//  ContentView.swift
//  Learn
//
//  Created by Jaime on 2/8/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isOn: Bool = false
    var body: some View {
        VStack {
            Toggle(isOn: $isOn, label: {
                Text(!isOn ? "OFF": "ON")
                    .foregroundStyle(.white)
            }).fixedSize()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(isOn ? .yellow : .black)
    }
}

#Preview {
    ContentView()
}
