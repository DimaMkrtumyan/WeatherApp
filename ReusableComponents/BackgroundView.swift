//
//  BackgroundView.swift
//  WeatherApp
//
//  Created by Dmitriy Mkrtumyan on 14.02.24.
//

import SwiftUI

public struct BackgroundView: View {
    
    public var isNight: Bool
    
    public init(isNight: Bool) {
        self.isNight = isNight
    }
    
    public var body: some View {
        LinearGradient(gradient: Gradient(
            colors: [isNight ? .black : .blue,
                     isNight ? .gray : .lightBlue]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
    }
}
