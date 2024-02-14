//
//  ReusableButton.swift
//  ReusableComponents
//
//  Created by Dmitriy Mkrtumyan on 14.02.24.
//

import SwiftUI

public struct ReusableButton: View {
    
    public init() { }
    
    public var body: some View {
        Button {
            print("Day time changed")
        } label: {
            Text("Change Day Time")
                .frame(width: 280, height: 50)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.white)
                )
                .font(.system(size: 20,
                              weight: .bold,
                              design: .default))
                .presentationCornerRadius(10)
        }
    }
}
