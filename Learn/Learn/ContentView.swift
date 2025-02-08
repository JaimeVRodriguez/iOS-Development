//
//  ContentView.swift
//  Learn
//
//  Created by Jaime on 2/8/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var search: String = ""
    @State private var friends: [String] = ["Jaime", "Krystal", "Kara", "Dylan", "Gunner"]
    @State private var filteredFriends: [String] = []
    
    var body: some View {
        VStack {
            
            List(filteredFriends, id: \.self) {friend in
                Text(friend)
            }
            .listStyle(.plain)
            .searchable(text: $search)
            .onChange(of: search) {
                if search.isEmpty {
                    filteredFriends = friends
                } else {
                    filteredFriends = friends.filter{ $0.contains(search)}
                }
            }
            
            Spacer()
        
        }.padding()
            .onAppear(perform: {
                filteredFriends = friends
            })
            .navigationTitle("Family")
    }
}

#Preview {
    NavigationStack{
        ContentView()
    }
}
