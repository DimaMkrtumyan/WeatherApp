//
//  OnTapAction.swift
//  ReusableComponents
//
//  Created by Dmitriy Mkrtumyan on 14.02.24.
//

import SwiftUI

struct ButtonActionEnvironmentKey: EnvironmentKey {
    static var defaultValue: () -> Void = { }
}

extension EnvironmentValues {
    var onTapAction: () -> Void {
        get { self[ButtonActionEnvironmentKey.self] }
        set { self[ButtonActionEnvironmentKey.self] = newValue }
    }
}

public extension View {
    func onTapAction(_ action: @escaping () -> Void) -> some View {
        environment(\.onTapAction, action)
    }
}
