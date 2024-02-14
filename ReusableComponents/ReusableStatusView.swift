//
//  ReusableStatusView.swift
//  ReusableComponents
//
//  Created by Dmitriy Mkrtumyan on 14.02.24.
//

import SwiftUI

public struct ReusableStatusView: View {
    
    private var imageName: String
    private var temperature: Int
    
    public init(imageName: String, temperature: Int) {
        self.imageName = imageName
        self.temperature = temperature
    }
    
    public var body: some View {
        VStack(spacing: 1) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundStyle(.white)
        }
        .padding(.bottom, 40)
    }
}
