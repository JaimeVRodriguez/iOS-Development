//
//  ContentView.swift
//  HelloSwiftUi
//
//  Created by Jaime on 2/7/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//            Existing Image File
            Image("costa-rica")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
            
//            Image from the web
            AsyncImage(url: URL(string: "https://cdn-4.motorsport.com/images/mgl/Y99JQRbY/s8/red-bull-racing-logo-1.jpg")!) {
                image in image
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
            } placeholder: {
                ProgressView("Downloading")
            }
                
            Text("First Line!")
                .foregroundStyle(.cyan)
                .font(.title3)
                .padding([.top, .bottom], 20)
            Text("Second Line!")
                .foregroundStyle(.green)
            Text("Third Line!")
            HStack{
                Text("Left")
                Text("Right")
                    .fontWeight(.heavy)
            }
        }.foregroundStyle(.orange)
    }
}

#Preview {
    ContentView()
}
