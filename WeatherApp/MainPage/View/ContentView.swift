//
//  ContentView.swift
//  WeatherApp
//
//  Created by Dmitriy Mkrtumyan on 12.02.24.
//

import SwiftUI
import ReusableComponents

struct ContentView: View {
    
    // MARK: - Data
    @State private var isNight = false
    private var location: String = "Cupertino, CA"
    
    // MARK: - Business logic
    private func setupChangeDayButton() -> some View {
        ReusableButton(title: "Change Day Time",
                       cornerRadius: 10,
                       isNight: isNight)
        .onTapAction {
            print("Change Day Time Button Tapped")
            isNight.toggle()
        }
    }
    
    // MARK: - Body
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            .ignoresSafeArea()
            
            VStack {
                ReusableLocationTitle(location: location)
                
                ReusableStatusView(imageName: isNight ? "cloud.moon.fill" : "cloud.sun.fill", temperature: 21)
                
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
                setupChangeDayButton()
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
