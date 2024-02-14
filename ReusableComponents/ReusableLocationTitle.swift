//
//  ReusableLocationTitle.swift
//  ReusableComponents
//
//  Created by Dmitriy Mkrtumyan on 14.02.24.
//

import SwiftUI

public struct ReusableLocationTitle: View {
    
    private var location: String
    
    public init(location: String) {
        self.location = location
    }
    
    public var body: some View {
        Text(location)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundStyle(.white)
            .padding()
    }
}
