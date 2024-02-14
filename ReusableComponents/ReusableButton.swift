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
    private var foregroundColor: Color
    private var backgroundColor: Color
    private var cornerRadius: CGFloat
    
    public init(title: String,
                foregroundColor: Color,
                backgroundColor: Color,
                cornerRadius: CGFloat) {
        self.title = title
        self.foregroundColor = foregroundColor
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
    }
    
    public var body: some View {
        Button {
            onTapAction()
        } label: {
            Text(title)
                .frame(width: 280, height: 50)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(backgroundColor)
                )
                .foregroundStyle(foregroundColor)
                .font(.system(size: 20,
                              weight: .bold,
                              design: .default))
                .presentationCornerRadius(cornerRadius)
        }
    }
}
