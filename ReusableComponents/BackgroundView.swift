//
//  BackgroundView.swift
//  WeatherApp
//
//  Created by Dmitriy Mkrtumyan on 14.02.24.
//

import SwiftUI

public struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    public init(topColor: Color, bottomColor: Color) {
        self.topColor = topColor
        self.bottomColor = bottomColor
    }

    public var body: some View {
        LinearGradient(gradient: Gradient(
            colors: [topColor,
                     bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
    }
}
