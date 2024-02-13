//
//  ContentView.swift
//  WeatherApp
//
//  Created by Dmitriy Mkrtumyan on 12.02.24.
//

import SwiftUI

struct ContentView: View {
    let gradient = Gradient(colors: [.blue, .white])
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: gradient,
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea(.all)
            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundStyle(.white)
                    .padding()
                
                VStack(spacing: 10) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundStyle(.white)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
