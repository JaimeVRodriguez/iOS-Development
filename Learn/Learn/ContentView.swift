//
//  ContentView.swift
//  Learn
//
//  Created by Jaime on 2/8/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name: String = ""
    @State private var friends: [String] = []
    
    var body: some View {
        VStack {
            TextField("Enter name", text: $name)
                .textFieldStyle(.roundedBorder)
                .onSubmit {
                    friends.append(name)
                    name = ""
                }
            
            List(friends, id: \.self) {friend in
                Text(friend)
            }
            
            Spacer()
        
        }.padding()
    }
}

#Preview {
    ContentView()
}
