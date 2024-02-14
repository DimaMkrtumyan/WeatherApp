//
//  WeatherDayView.swift
//  ReusableComponents
//
//  Created by Dmitriy Mkrtumyan on 14.02.24.
//

import SwiftUI

public struct WeatherDayView: View {
    
    private var dayOfWeek: String
    private var imageName: String
    private var temperature: Int
    private var frameSize = CGSize(width: 40, height: 40)
    
    public init(dayOfWeek: String,
                imageName: String,
                temperature: Int) {
        self.dayOfWeek = dayOfWeek
        self.imageName = imageName
        self.temperature = temperature
    }
    
    public var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundStyle(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: frameSize.width, height: frameSize.height)
                .padding(1)
            
            Text("\(temperature)°")
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundStyle(.white)
        }
    }
}
