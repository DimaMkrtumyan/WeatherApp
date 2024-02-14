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
    private var location: String = "Cupertino, CA"
    
    // MARK: - Business logic
    private func setupChangeDayButton() -> some View {
        ReusableButton(title: "Change Day Time",
                       foregroundColor: .blue,
                       backgroundColor: .white,
                       cornerRadius: 10)
        .onTapAction {
            print("Change Day Time Button Tapped")
        }
    }
    
    // MARK: - Body
    var body: some View {
        ZStack {
            BackgroundView(topColor: .blue, bottomColor: .lightBlue)
            .ignoresSafeArea(.all)
            
            VStack {
                ReusableLocationTitle(location: location)
                
                ReusableStatusView(imageName: "cloud.sun.fill", temperature: 21)
                
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
