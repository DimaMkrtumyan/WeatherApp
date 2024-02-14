//
//  ContentView.swift
//  WeatherApp
//
//  Created by Dmitriy Mkrtumyan on 12.02.24.
//

import SwiftUI
import ReusableComponents

struct ContentView: View {
    
    var body: some View {
        ZStack {
            BackgroundView(topColor: .blue, bottomColor: .lightBlue)
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
                        .frame(width: 100, height: 100)
                    
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundStyle(.white)
                }
                .padding(.bottom, 40)
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "Thue",
                                   imageName: "cloud.sun.fill",
                                   temperature: 59)
                    WeatherDayView(dayOfWeek: "Thue",
                                   imageName: "sun.max.fill",
                                   temperature: 59)
                    WeatherDayView(dayOfWeek: "Thue",
                                   imageName: "cloud.sun.rain.fill",
                                   temperature: 59)
                    WeatherDayView(dayOfWeek: "Thue",
                                   imageName: "wind.snow",
                                   temperature: 59)
                    WeatherDayView(dayOfWeek: "Thue",
                                   imageName: "snowflake",
                                   temperature: 59)
                }
                
                Spacer()
                
                ReusableButton()
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
