//
//  ReusableButton.swift
//  ReusableComponents
//
//  Created by Dmitriy Mkrtumyan on 14.02.24.
//

import SwiftUI

public struct ReusableButton: View {
    @Environment(\.onTapAction) var onTapAction
    private var title: String
    private var cornerRadius: CGFloat
    private var isNight: Bool
    
    public init(title: String,
                cornerRadius: CGFloat,
                isNight: Bool) {
        self.title = title
        self.cornerRadius = cornerRadius
        self.isNight = isNight
    }
    
    public var body: some View {
        Button {
            onTapAction()
        } label: {
            Text(title)
                .frame(width: 280, height: 50)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(isNight ? Color.mint.gradient : Color.white.gradient)
                )
                .foregroundStyle(isNight ? Color.white : Color.blue)
                .font(.system(size: 20,
                              weight: .bold,
                              design: .default))
                .presentationCornerRadius(cornerRadius)
        }
    }
}
